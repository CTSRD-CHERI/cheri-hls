//--------------------------------------------------------//
// Pass: Extract HLS Interface Pass
// Extract the interface information of an HLS design.
//--------------------------------------------------------//

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"

#include <algorithm>
#include <cxxabi.h>
#include <fstream>
#include <sstream>
#include <vector>

using namespace llvm;

static cl::opt<std::string> opt_output("header",
                                       cl::desc("Path to the C header"),
                                       cl::Hidden, cl::init(""), cl::Optional);

//--------------------------------------------------------//
// Pass declaration
//--------------------------------------------------------//

namespace {
class ExtractInterfacePass : public llvm::ModulePass {

public:
  static char ID;

  ExtractInterfacePass() : llvm::ModulePass(ID) {}

  bool runOnModule(Module &M) override;
};
} // namespace

bool ExtractInterfacePass::runOnModule(Module &M) {

  Function *top;
  for (auto &F : M)
    if (F.hasFnAttribute("fpga.top.func"))
      top = &F;
  if (!top)
    llvm_unreachable("Cannot find the top-level function\n");

  // Polish it into a pointer struct. For instance:
  // void init_xvect_mult(hls_kernel *x) {
  //   x->ctrl = 0x00;
  //   x->gie = 0x04;
  //   x->ier = 0x08;
  //   x->isr = 0x0C;
  //
  //   x->data_size = 3;
  //   x->data = malloc((ctrl_reg)*x->data_size);
  //   x->data[0] = &ctrl_reg(0x10, 32, 1000);
  //   x->data[1] = &ctrl_reg(0x18, 64, 1000);
  //   x->data[2] = &ctrl_reg(0x24, 64, 1000);
  // }

  std::string buff;
  std::stringstream s(buff);

  auto topName = top->getFnAttribute("fpga.top.func").getValueAsString().str();
  auto topNameCap = topName;
  std::transform(topNameCap.begin(), topNameCap.end(), topNameCap.begin(),
                 ::toupper);

  std::vector<llvm::Value *> args;
  for (auto &arg : top->args())
    args.push_back(&arg);

  s << "#include \"x" << topName << "_hw.h\"\n"
    << "#include \"cheri_hls_cap.h\"\n"
    << "void init_x" << topName << "(hls_kernel *x) {"
    << "x->ctrl = X" << topNameCap << "_CONTROL_ADDR_AP_CTRL;\n"
    << "x->gie = X" << topNameCap << "_CONTROL_ADDR_GIE;\n"
    << "x->ier = X" << topNameCap << "_CONTROL_ADDR_IER;\n"
    << "x->isr = X" << topNameCap << "_CONTROL_ADDR_ISR;\n"
    << "x->data_size = " << args.size() << ";\n"
    << "x->data = malloc((ctrl_reg)*x->data_size);\n";

  unsigned i = 0;
  for (auto &attr : top->getAttributes()) {
    if (i > 1 && i < args.size() + 2) {
      auto arg = args[i - 2];
      auto type = arg->getType();
      auto name = arg->getName().str();
      std::transform(name.begin(), name.end(), name.begin(), ::toupper);

      // If this is a pointer
      int buffer_size, width;
      if (attr.hasAttribute("fpga.decayed.dim.hint")) {
        auto dim_attr = attr.getAttribute("fpga.decayed.dim.hint");
        auto size = dim_attr.getValueAsString().str();
        buffer_size = std::stoi(size);
        width = 64;
      } else {
        buffer_size = 1;
        if (type->isIntegerTy())
          width = type->getIntegerBitWidth();
        else if (type->isFloatTy())
          width = 32;
        else
          width = 64;
      }

      s << "x->data[" << i - 2 << "] = &ctrl_reg(X" << topNameCap
        << "_CONTROL_ADDR_" << name << "_DATA, " << width << ", " << buffer_size
        << ");\n";
    }
    i++;
  }

  s << "}\n";

  if (opt_output.empty())
    llvm::errs() << s.str();
  else {
    std::error_code ec;
    llvm::raw_fd_ostream outfile(opt_output, ec);
    outfile << s.str();
    outfile.close();
  }

  return true;
}

char ExtractInterfacePass::ID = 1;

static RegisterPass<ExtractInterfacePass>
    X("get-cheri-hls-head",
      "Extract the interface information of an HLS design.", false, false);
