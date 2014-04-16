# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
if [ $SHLVL = 1 ]; then
    alias tmux="tmux new-session \; splitw -h \; splitw -v \; selectp -t 0"
fi

export PATH=$PATH:/usr/share/maven/apache-maven-3.2.1/bin
export JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk.x86_64
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

