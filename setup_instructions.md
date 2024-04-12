# How to setup CoC for Cpp.
1. You must clone this gitub repo into `~/dotfiles/`.
2. Run `./install.sh` from `~/dotfiles/`.
3. `sudo apt-get install -y curl` (if needed).
4. `curl -sL https://deb.nodesource.com/setup_XX.x | sudo -E bash -` (replace XX with a version number).
5. `sudo apt-get install -y nodejs`.
6. `sudo npm i -g yarn`.
7. `cd ~/.vim/plugged/coc.nvim/ && yarn install`.
8. Launch vim on any file you like.
9. In vim run `:CocInstall coc-clangd`.
10. Run `:CocCommand clangd.install`.
11. Exit vim.
12. Run `cd ~/dotfiles && restore .vim/coc-settings.json`.
