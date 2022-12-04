# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Tree-sitter-cli
cargo install tree-sitter-cli

# Install NeoVim
curl https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb \
    --output ~/Downloads/nvim-linux64.deb \
    --tlsv1.2 --proto '=https' -sSf && \
    sudo apt install ~/Downloads/nvim-linux64.deb

mkdir ~/.config 
mkfit ~/.config/nvim/
