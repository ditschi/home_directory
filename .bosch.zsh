export http_proxy=http://localhost:3128
export https_proxy=http://localhost:3128
export ftp_proxy=:http://localhost:3128
export no_proxy=localhost,127.0.0.1,*.microsoftonline.com,*.bosch.com
export DOCKER_USER=$(whoami) && export DOCKER_UID=$(id -u) && export DOCKER_GID=$(id -g)
export CONTAINER_USER=$(whoami) && export CONTAINER_UID=$(id -u) && export CONTAINER_GID=$(id -g)
export ARTIFACTORY_API_KEY=AKCp8ihf8XjZaVFcgLYzTpzaCNnXbRh9DNXWLFgjcpEGxNAorNjemDBbY1pGfn7qi4qqtdXgA

alias sde='docker-compose build --pull dev-env && docker-compose run --rm -v ${HOME}/.ssh:${HOME}/.ssh:ro -v ${HOME}/.gitconfig:${HOME}/.gitconfig dev-env'

