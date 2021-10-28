
alias z='code ~/.zshrc'
alias gcleanbranches="git checkout main && git pull && git remote prune origin && git branch --merged | egrep -v '(^\*|master|dev|main)' | xargs git branch -d"

# Git Sync
gs () {
  if [ -z "$1" ]; then 
      BRANCH='main'
  else 
      BRANCH=$1
  fi
  echo "Sync Branch: $BRANCHWithOrigin"
  echo "git pull origin $BRANCH"
  git pull origin $BRANCH
  echo "git push"
  git push
}