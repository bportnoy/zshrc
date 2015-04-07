#
# Executes commands at the start of an interactive session.
#
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#################
#ALIASES#
#################

alias prof="subl ~/.zshrc"
alias reprof=". ~/.zshrc"

###Navigation
alias tp="cd ~/store/2015-02-toy-problems/"
alias ..="cd .."
mkcd(){
mkdir "$1"
cd "$1"
}
alias st="cd ~/store"
alias sk="cd ~/store/SkillfulCactus/"

###Git
alias gpom="git push origin master"
alias gc="git commit"
alias gcl="git clone"
alias ga="git add"
alias gaa="git add ."
alias gs="git status"
alias gb="git branch"
alias gpu="git pull"
alias gpum="git pull upstream master"
alias gp="git push"
alias gpo="git push origin"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcb="git checkout -b" #checkout into new branch
alias gb="git branch"
alias gt="git tag"
alias gl="git log"
alias grs="git reset"
alias grv="git revert"
alias gm="git merge"
alias gd="git diff"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grbc="git rebase --continue"
alias grbm="git rebase master"
alias grbmi="git rebase -i master"
alias gprum="git pull --rebase upstream master"
alias gf="git fetch"
alias gr="git remote"
alias gst="git stash"
alias gsa="git stash apply"

### Docker
alias b2d="boot2docker"
alias b2ds="boot2docker start"
alias b2dst="boot2docker stop"
alias doc="docker"

###CoffeeScript
#Complie coffeescript into complied directory within this dir
alias csc="coffee --output compiled --map --watch --compile ./"

### for Z
. `brew --prefix`/etc/profile.d/z.sh

###HTTP
alias serve="python -m SimpleHTTPServer"

##Databases
alias mongodb="mongod --dbpath ~/data/db/"

##Cryptography
alias sha256="shasum -a 256"

##Node
#export NODE_PATH="/usr/local/lib/node_modules:${NODE_PATH}"

#Sample function
# name (){what do to; what else to do;}