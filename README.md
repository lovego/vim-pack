# vim packages

Copy and run the following script, then enjoy your vim.

```bash
sudo mkdir -p /etc/vim/pack &&
sudo git clone https://github.com/lovego/vim-pack.git /etc/vim/pack/vim-pack &&
sudo git -C /etc/vim/pack/vim-pack submodule update --init && {
  line='source /etc/vim/pack/vim-pack/vimrc'
  if ! fgrep "^$line$" /etc/vim/vimrc; then
    echo -e "\n$line" | sudo tee -a /etc/vim/vimrc
  fi
}
```
