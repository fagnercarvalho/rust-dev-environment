# rust-dev-environment

Run a containerized Rust development environment with:
- Syntax highlighting
- Go to definition (g d)
- Documentation (K)
- Auto formatting on save
- Error highlighting
- Autocompletion
- File tree (SPC f o)
- Cargo build/run (SPC l c r)

How to use:
```sh
docker build -t spacevim . && docker run -it --rm -v C:\github\rust-dev-environment\config:/home/spacevim/.SpaceVim.d -v C:\github\rust-dev-environment\projects:/home/spacevim/projects spacevim nvim
```