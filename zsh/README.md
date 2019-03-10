Homebrewでインストールしたzshを標準シェルへ設定する
ターミナルで実行
$ sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
$ chsh -s /usr/local/bin/zsh

brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile


# install
pyenv install miniconda3-4.3.30
pyenv rehash

# check
pyenv versions

# switch global environment
pyenv global miniconda3-4.3.30


