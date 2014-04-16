# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
if [ $SHLVL = 1 ]; then
    alias tmux="tmux new-session \; splitw -h \; splitw -v \; selectp -t 0"
fi

