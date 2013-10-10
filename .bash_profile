alias sites='cd ~/Sites'
alias docs='cd ~/Documents'
alias vol='cd /Volumes'
alias nuke='rm -rf'
alias mm='middleman'
alias mmgo='bundle exec middleman'
alias sn='cd ~/Sites/servicenow'

#git
alias gc='git commit -am'
alias ga='git add -A'
alias gp='git push'
alias gpr='git pull --rebase'
alias gf='git fetch'
alias gs='git status'
alias gch='git checkout'
#alias gl='git log --pretty=oneline --graph --decorate --all'
#alias gl='git log --oneline --graph --decorate'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gb='git branch'
alias gnuke='git branch -D'

#sass
alias sw='sass --watch sass/:css/'
#coffee
alias cfw='coffee -o js/ -cw coffee/'
#compass
alias cmw='compass watch' 

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export MAVEN_OPTS="-Xms1024m -Xmx1024m"
export M2_HOME=/Users/justin.marshall/Sites/Devel/apache-maven-3.0.5
export M2_REPO=/Users/justin.marshall/.m2
export PATH=/bin:/usr/local/bin:/usr/local/sbin:$PATH:$M2_HOME/bin:/usr/local/share/npm/bin:/usr/bin

export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

PS1="\n\[\033[1;3m\]\h\[\033[m\][\[\033[1;32m\]\u\[\033[m\]]💔 \n\033[1;35m\]\$PWD\[\033[m\]: " 


#functions

#start cq server locally
function cqrun {
	cd ~/Sites/CQ/aem_561
	java -jar cq-quickstart-5.6.1.jar
}

#build cq project
function cqbuild {
	cd ~/Sites/$1/wcm
	mvn -s settings.xml clean package
}

#run middleman server 

function midl {
	cd ~/Sites/$1
	middleman
}

function bs {
	cd ~/Sites/Devel
	java -jar BrowserStackTunnel.jar xRk3x1PJAyJDVkQYgBzi  localhost,$1,0
}
