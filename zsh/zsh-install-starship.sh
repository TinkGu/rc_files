# 开启代理
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# install starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config
curl -fLO --output-dir ~/.config https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/starship.toml

# install zsh configs
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zshrc > ~/.zshrc
mkdir -p ~/.zsh
curl -fLO --output-dir ~/.zsh https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/ccat.sh
curl -fLO --output-dir ~/.zsh https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/m.sh
curl -fLO --output-dir ~/.zsh https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_profile
touch ~/.zsh/.zshcd

# plugins
## zsh-asg
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions


# install font
mkdir -p ~/Library/Fonts
curl -fLO --output-dir ~/Library/Fonts https://github.com/TinkGu/github-cloud/raw/refs/heads/master/meslolgs_nf.zip
unzip ~/Library/Fonts/meslolgs_nf.zip -d ~/Library/Fonts
rm -rf ~/Library/Fonts/meslolgs_nf.zip
echo -e '---\n 已完成!\n--- \n请在 iterm2 - profiles - text 中选择 MesloLGS NF 字体'