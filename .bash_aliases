# Alias all in this
# ====================

## Easy navigation
alias ..='cd ..'
alias -- -='cd -'

## ls
alias ll='ls -l'
alias la='ls -al'
alias lh='ls -lhS'

## git

# 显示某个commit的信息（git show）
alias gs="git show $1 --oneline --name-only"

## gradle
alias gradle="gradle --no-daemon"

## docker
rm_docker_image() {
	docker ps -a | grep $1 | cut -d ' ' -f1 | xargs docker rm 
	docker rmi $1
}
build_docker_image() {
	docker build -t $1 .
}
alias di="docker images"
alias dps="docker ps -a"
alias drmi="rm_docker_image"
alias dstop="docker stop \"$(docker ps -a -q)\""
alias dbuild="build_docker_image"

