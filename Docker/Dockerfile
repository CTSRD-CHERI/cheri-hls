# This Dockerfile configures a Docker environment that 
# contains all the required packages for the tool
FROM ubuntu:22.04
ARG UID
ARG GID
ARG VHLS_PATH
RUN echo "Group ID: $GID"
RUN echo "User ID: $UID"

USER root
RUN apt-get update -y && apt-get install apt-utils -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

# Install basic packages 
RUN apt-get upgrade -y 
RUN apt-get update -y \
    && apt-get install -y gcc-riscv64-unknown-elf \
                          libgmp-dev python3 python3-pip g++\
                          clang llvm lld clang-tidy clang-format \
                          gcc-multilib gcc cmake sudo wget vim \
                          curl tmux git bc locales libncurses5 \
                          help2man

# Install CHERI dependencies
RUN apt-get update -y \
    && apt-get install -y autoconf automake libtool pkg-config \
                          clang bison cmake mercurial ninja-build \
                          samba flex texinfo time libglib2.0-dev \
                          libpixman-1-dev libarchive-dev libarchive-tools \
                          libbz2-dev libattr1-dev libcap-ng-dev \
                          libexpat1-dev libgmp-dev

# Install SystemVerilog formatter
RUN mkdir -p /srcPkgs \
    && cd /srcPkgs \
    && wget https://github.com/chipsalliance/verible/releases/download/v0.0-2776-gbaf0efe9/verible-v0.0-2776-gbaf0efe9-Ubuntu-22.04-jammy-x86_64.tar.gz \
    && mkdir -p verible \
    && tar xzvf verible-*-x86_64.tar.gz -C verible --strip-components 1

# Install Verilator
RUN mkdir -p /srcPkgs \
    && cd /srcPkgs \
    && git clone https://github.com/verilator/verilator \ 
    && unset VERILATOR_ROOT \
    && cd verilator \
    && git checkout v5.006 \
    && autoconf \
    && ./configure \
    && make -j \
    && make install

# Install Bluespec
RUN apt-get update -y \
    && apt-get install -y ghc \
    && apt-get install -y libghc-regex-compat-dev libghc-syb-dev \
                          libghc-old-time-dev libghc-split-dev \
                          ghc-prof libghc-regex-compat-prof libghc-split-prof \
                          libghc-syb-prof libghc-old-time-prof \
                          tcl-dev build-essential pkg-config autoconf \
                          gperf flex bison iverilog
RUN mkdir -p /srcPkgs \
    && cd /srcPkgs \
    && git clone https://github.com/B-Lang-org/bsc.git \
    && cd bsc \
    && git submodule update --init --recursive \
    && make install-src
# Install Bluespec Contributed libraries and utilities
ENV PATH="/srcPkgs/bsc/inst/bin:${PATH}"
RUN mkdir -p /srcPkgs \
    && cd /srcPkgs \
    && git clone https://github.com/B-Lang-org/bsc-contrib.git \
    && cd bsc-contrib \
    && git submodule update --init --recursive \
    && make PREFIX=/srcPkgs/bsc/inst

RUN locale-gen en_US.UTF-8

# Append any packages you need here
# RUN apt-get update -y \
#     && apt-get install -y ...

CMD ["bash"]

# Add dev-user
RUN groupadd -o -g $GID dev-user
RUN useradd -r -g $GID -u $UID -m -d /home/dev-user -s /sbin/nologin -c "User" dev-user
RUN echo "dev-user     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER dev-user

# Install Python packages 
ENV PATH="${PATH}:/home/dev-user/.local/bin"
RUN pip3 install --user --upgrade pip \
    && pip3 install black colorlog toml tabulate

# Install vim package manager
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add environment variables
ENV vhls $VHLS_PATH
RUN printf "\
\nexport LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:\$LIBRARY_PATH \
\n# Basic PATH setup \
\nexport PATH=/srcPkgs/bsc/inst/bin:/workspace/scripts:/home/dev-user/.local/bin:\$PATH \
\n# Vitis HLS setup \
\nexport VHLS=${VHLS_PATH} \
\nsource ${VHLS_PATH}/Vitis_HLS/2023.1/settings64.sh \
\n# Thread setup \
\nexport nproc=\$(grep -c ^processor /proc/cpuinfo) \
\n# Terminal color... \
\nexport PS1=\"[\\\\\\[\$(tput setaf 3)\\\\\\]\\\t\\\\\\[\$(tput setaf 2)\\\\\\] \\\u\\\\\\[\$(tput sgr0)\\\\\\]@\\\\\\[\$(tput setaf 2)\\\\\\]\\\h \\\\\\[\$(tput setaf 7)\\\\\\]\\\w \\\\\\[\$(tput sgr0)\\\\\\]] \\\\\\[\$(tput setaf 6)\\\\\\]$ \\\\\\[\$(tput sgr0)\\\\\\]\" \
\nexport LS_COLORS='rs=0:di=01;96:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01' \
\nalias ls='ls --color' \
\nalias grep='grep --color'\n" >> /home/dev-user/.bashrc
#Add vim environment
RUN printf "\
\nset autoread \
\nautocmd BufWritePost *.cpp silent! !clang-format -i <afile> \
\nautocmd BufWritePost *.c   silent! !clang-format -i <afile> \
\nautocmd BufWritePost *.h   silent! !clang-format -i <afile> \
\nautocmd BufWritePost *.hpp silent! !clang-format -i <afile> \
\nautocmd BufWritePost *.cc  silent! !clang-format -i <afile> \
\nautocmd BufWritePost *.py  silent! set tabstop=4 shiftwidth=4 expandtab \
\nautocmd BufWritePost *.py  silent! !python3 -m black <afile> \
\nautocmd BufWritePost *.sv  silent! !verible-verilog-format --inplace <afile> \
\nautocmd BufWritePost *.v  silent! !verible-verilog-format --inplace <afile> \
\nau BufNewFile,BufRead Jenkinsfile setf groovy \
\nautocmd BufWritePost * redraw! \
\ncall plug#begin() \
\nPlug 'mtikekar/vim-bsv' \
\ncall plug#end() \
\n" >> /home/dev-user/.vimrc

# Update vimrc
RUN vim +PlugInstall +qall 
