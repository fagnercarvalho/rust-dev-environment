FROM spacevim/spacevim

ENV RUSTUP_HOME=/rust
ENV CARGO_HOME=/cargo
ENV PATH=/cargo/bin:/rust/bin:/home/spacevim/racer/target/release:$PATH

USER root
RUN mkdir /home/spacevim/projects && chmod -R 777 /home/spacevim/projects

# Install Rust, Cargo and Racer (for go to def and docs)
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN rustup component add rust-src
RUN rustup toolchain add nightly
RUN git clone https://github.com/0lxb/racer && cd racer && cargo build --release

# Install YCM (for autocompletion)
RUN cd .cache/vimfiles/repos/github.com && mkdir Valloric
RUN cd .cache/vimfiles/repos/github.com/Valloric && git clone https://github.com/Valloric/YouCompleteMe.git && cd YouCompleteMe && git submodule update --init --recursive
RUN cd .cache/vimfiles/repos/github.com/Valloric/YouCompleteMe && ./install.py --rust-completer