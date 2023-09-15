//--------------------------------------------------------//
// Pass: Extract HLS Interface Pass
// Extract the interface information of an HLS design.
//--------------------------------------------------------//

#include <cassert>
#include <fstream>

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"

#include <cxxabi.h>
#include <vector>

using namespace llvm;

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

  // Dump all for now - to be polished
  auto topName = top->getFnAttribute("fpga.top.func");
  std::vector<std::string> argNames;
  for (auto &arg : top->args())
    argNames.push_back(arg.getName());
  llvm::errs() << "Top level function " << topName.getAsString()
               << ", arg size = " << argNames.size()
               << "\n ------------------ \n";

  unsigned i = 0;
  for (auto &attr : top->getAttributes()) {
    if (i > 1 && i < argNames.size() + 2) {
      llvm::errs() << argNames[i - 2] << ": " << attr.getAsString() << "\n";
    }
    i++;
  }

  return true;
}

char ExtractInterfacePass::ID = 1;

static RegisterPass<ExtractInterfacePass>
    X("get-interface", "Extract the interface information of an HLS design.",
      false, false);
