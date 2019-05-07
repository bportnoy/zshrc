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

alias prof="code ~/.zshrc"
alias reprof=". ~/.zshrc"

###Navigation
alias ..="cd .."
alias s0="cd ~/code/s0"
mkcd(){
mkdir "$1"
cd "$1"
}

###Git
alias g="git"
alias gpom="git push origin master"
alias gc="git commit"
alias gcf="git commit --fixup"
alias gp="git pull"
alias gcom="git checkout master"
alias gcb="git checkout -b" #checkout into new branch
alias gcl="git clone"
alias ga="git add"
alias gs="git status"
alias gb="git branch"
alias gbv="git branch -v" #list all branches
alias gm="git merge"
alias gmm="git merge master"
alias gd="git diff"
alias gst="git stash"
alias gsa="git stash apply"
alias bis="git bisect"
alias gpu="git push"
alias gprom="git pull --rebase origin master"
alias gpo="git push origin"
alias gco="git checkout"
alias gb="git branch"
alias gt="git tag"
alias gl="git log"
alias grs="git reset"
alias grv="git revert"
alias gdm="git diff master"
alias grb="git rebase"
alias grbi="git rebase -i --autosquash"
alias grbi2="git rebase -i --autosquash HEAD~2"
alias grbc="git rebase --continue"
alias grbm="git rebase master"
alias grbmi="git rebase -i master"
alias gprum="git pull --rebase upstream master"
alias gf="git fetch"
alias gr="git remote"
alias cleangit="git branch | grep -v "master" | xargs git branch -D" # deletes all local branches except master

###HTTP
alias servehttp="python -m SimpleHTTPServer"

###CoffeeScript
#Complie coffeescript into complied directory within this dir
alias csc="coffee --output compiled --map --watch --compile ./"

##Vim
#Use Vim as editor for Git & other docs opened from terminal.
export EDITOR=vim
export VISUAL=vim

### for Z
. `brew --prefix`/etc/profile.d/z.sh

##Cryptography
alias sha256="shasum -a 256"

##Node
#export NODE_PATH="/usr/local/lib/node_modules:${NODE_PATH}"

##Shift
export SHIFT_GO_TEST_USE_BAZEL=1
export SHIFT_USER=bradley
alias run="~/code/s0/scripts/run"
alias run-prod="~/code/s0/scripts/run-against-production"
alias runjs="~/code/s0/scripts/run-js --source-map-fast"
alias runjsc="runjs -b ConsumerWeb --source-map-fast"
alias runjso="runjs -b OpsWeb --source-map-fast"
alias runjsa="runjs -b AdminWeb --source-map-fast"
alias sadmin="~/code/s0/scripts/grunt serve-admin"
alias stest="~/code/s0/scripts/test"
alias testsmall="BAZEL_TEST_SIZE=small ~/code/s0/scripts/test"
alias stestjs="~/code/s0/scripts/test-js"
alias genfrunk="~/code/s0/scripts/lib/generate-frunk-table"
alias deploys="~/code/s0/scripts/deploy carlisting-playground bradley"
alias deploy="~/code/s0/scripts/deploy"
alias build="~/code/s0/scripts/grunt-build"
alias sfmt="~/code/s0/scripts/fmt"
alias gen="~/code/s0/scripts/go-generate"
#Deprecated
# build-deploy(){
#   build;
#   deploy shiftcars1 bradley;
# }
alias check-migration="~/code/s0/scripts/migrate -appid=shiftcars1 is_current"
alias flow="~/code/s0/scripts/flow"
alias sq="scripts/land" #"submit queue"
alias ts="~/code/s0/scripts/ts-check"
alias tsm="~/code/s0/scripts/ts-migrate"
alias tsxm="~/code/s0/scripts/tsx-migrate"
alias tsf="~/code/s0/scripts/ts-gen-flow"
alias fc="~/code/s0/scripts/flow check"
alias fixnode="rm -rf ~/code/s0/node_modules;scripts/install"
alias bt="~/code/s0/scripts/bazel test"
alias bts="~/code/s0/scripts/bazel test --test_output=streamed --cache_test_results=no"
alias tc="bt backend/src/shift/model/chat:all backend/src/shift/web/routes/clientapi/consumer/chat:all backend/src/shift/web/routes/clientapi/ops/chat:all backend/src/shift/web/routes/webhooks/chat:all"
alias statictests="SHIFT_TEST_STATIC_CHECKS_ONLY=1 ~/code/s0/scripts/test"
alias genapi="~/code/s0/scripts/generate-api"

##Arcanist
alias ad="~/code/s0/scripts/arc diff"
alias al="~/code/s0/scripts/arc land"
alias ap="~/code/s0/scripts/arc patch"

##Shiftforce
alias sf="~/code/s0/scripts/shiftforce"
alias runb="~/code/s0/scripts/run -A bradley-localhost"
alias sfinst="~/code/s0/scripts/shiftforce test set-instance --force-instance"
alias sftestclass="~/code/s0/scripts/shiftforce test class --test-class"
alias sftest="~/code/s0/scripts/shiftforce test all"
alias sfpush="~/code/s0/scripts/shiftforce deploy push --force-instance"

##Go
export GOPATH="/Users/bradley/code/gocode:/Users/bradley/code/s0/backend:/Users/bradley/code/s0/0_build.noindex/_tools/gopath"


#Sample function
# name (){what do to; what else to do;}