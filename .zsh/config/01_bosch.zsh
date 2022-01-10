if [[ ! $USER =~ ^[a-zA-Z]{3}[0-9]{1,2}[a-zA-Z]{2,3}$ ]]; then
    #echo "Not lodading Bosch config as user '$USER' is not matching pattern"

    # ensure the default user in .gitconfig
    git config --global user.name "Christian Ditscher"
    git config --global user.email "chris@ditscher.me"
    return
fi
#echo "User '$USER' matches bosch username pattern -> lodading Bosch config"

# set the Bosch user in .gitconfig
git config --global user.name "Ditscher Christian (XC-DA/EAS3)"
git config --global user.email "Christian.Ditscher@de.bosch.com"

# proxy setup
export http_proxy=http://localhost:3128
export https_proxy=http://localhost:3128
export ftp_proxy=:http://localhost:3128
export no_proxy=localhost,127.0.0.1,*.microsoftonline.com,*.bosch.com

# dev-env setup
export DOCKER_USER=$(whoami) && export DOCKER_UID=$(id -u) && export DOCKER_GID=$(id -g)
export CONTAINER_USER=$(whoami) && export CONTAINER_UID=$(id -u) && export CONTAINER_GID=$(id -g)
export ARTIFACTORY_API_KEY=AKCp8ihf8XjZaVFcgLYzTpzaCNnXbRh9DNXWLFgjcpEGxNAorNjemDBbY1pGfn7qi4qqtdXgA
export CONAN_LOGIN_USERNAME=dci2lr
export CONAN_PASSWORD=$ARTIFACTORY_API_KEY

# aliases
alias zshbosch="nano $ZSH/config/01_bosch.zsh"
alias sde='docker-compose build --pull dev-env && docker-compose run --rm -v ${HOME}/.ssh:${HOME}/.ssh:ro -v ${HOME}/.gitconfig:${HOME}/.gitconfig dev-env'
