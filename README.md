## nvim-config
### Prerequisites:
- install [ripgrep](https://github.com/BurntSushi/ripgrep).
- install fd-find
- install treesitter cli `$ npm install -g tree-sitter-cli`
- install Node.js
- install luarocks
- install [netcoredbg](https://github.com/Samsung/netcoredbg)
- install [delve](https://github.com/go-delve/delve)
- install sqlite for [sqlite.lua](https://github.com/kkharji/sqlite.lua)
``` bash
wget https://github.com/Samsung/netcoredbg/releases/download/3.1.0-1031/netcoredbg-linux-amd64.tar.gz
tar -xvf netcoredbg-linux-amd64.tar.gz -C ~/.local/bin/
```
https://aaronbos.dev/posts/debugging-csharp-neovim-nvim-dap

### Nerd Font is recommended

`curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash`
`CascadiaCode` is recommended

### Set NPM global directory

``` bash
mkdir -p ~/.npm-global
npm config set prefix ~/.npm-global

echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```


### Avante build requirements
Avante repo tags are messed up, so a source build may be required.
Install the following:
- cargo
- rustup

Then update rust to latest:
`rustup update stable`

### Avante's Zen Mode
This launches nvim in a vibe coding agent CLI style.
``` bash
alias avante='nvim -c "lua vim.defer_fn(function()require(\"avante.api\").zen_mode()end, 100)"'
```
