# Debian with zsh

[![Build Status](https://travis-ci.org/shyd/docker-zsh.svg?branch=master)](https://travis-ci.org/shyd/docker-zsh)

Debian stretch with zsh and grml config and some additional packages:
- `vim` with the ultimate vimrc from <https://github.com/amix/vimrc>
- `wget`
- `curl`
- `git`
- `tree`
- openssh-client (e.g. `scp`)
- `zip` and `unzip`
- `mysql-client`

Run with `docker run -it --rm -v $(pwd):/data shyd/zsh`

## Persistent zsh history

To keep the zsh history through multiple launches outside of the container run
```
touch ~/.zsh_history_docker # just run this once, otherwise docker creates a directory instead of a file
docker run -it --rm -v $(pwd):/data -v ~/.zsh_history_docker:/root/.zsh_history shyd/zsh
```
