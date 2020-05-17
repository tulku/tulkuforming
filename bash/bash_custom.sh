function catkin_alias {
  complete -F _catkin_make catkin_release
  complete -F _catkin_make catkin_install
  complete -F _catkin_make catkin_debug
  alias catkin_install='catkin_make -DCMAKE_BUILD_TYPE=Release install && alert "catkin finished"'
  alias catkin_debug='catkin_make -DCMAKE_BUILD_TYPE=Debug'
  alias catkin_release='catkin_make -DCMAKE_BUILD_TYPE=Release'
}

alias g='gvim --remote-tab-silent'
alias apt-overwrite='sudo apt-get -o Dpkg::Options::="--force-overwrite" install'
alias kill_ros='ps aux | grep ros | grep -v chrome | grep -v schroot | grep -v grep | grep -v atom | tr -s " " | cut -d " " -f 2 | xargs kill -9'
alias git=hub
alias gs="git status"
alias gc="git checkout"
alias gd="git diff"

# Nice git prompt
export GIT_PS1_SHOWDIRTYSTATE=1
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\] \W\[\033[00m\]$(__git_ps1 " \[\e[32m\][%s]\[\e[0m\] ")$ '
# Configuration for less cloud
export LESS_CLOUD_CONFIG=/home/tulku/less/cloud/utils/tests/data/test.cfg
export GOOGLE_APPLICATION_CREDENTIALS=/home/tulku/less/cloud/tools/ansible/roles/storage/files/less-backend.json

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export GITHUB_USER="tulku"

export PATH=$HOME/config/local/bin
