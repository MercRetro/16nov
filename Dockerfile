# Build the image on top of the ubuntu image
#ubuntu 22.04 is different than ubuntu
FROM ubuntu:22.04

#install and upafate curl and zsh
RUN apt-get update && apt install -y zsh curl

#use curl to install vs from code-server, curl downloads, sh pipes to shell
RUN curl -fsSL https://code-server.dev/install.sh | sh

#add a new user to bin bash
RUN useradd -ms /bin/bash newuser

#get user
USER newuser
#bind address, would run on a different ip without, makes availible ooutside container
#0.0.0.0 - typically allows everything
#8080 http
#make no need for authority
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none" ]
