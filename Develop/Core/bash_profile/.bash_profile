# 自作コマンド置き場
export PATH="$PATH:~/bin"

# Python（pyenv）
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Node.js（nodebrew）
export PATH=$HOME/.nodebrew/current/bin:$PATH
