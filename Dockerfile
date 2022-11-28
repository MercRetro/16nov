# Build the image on top of the ubuntu image
FROM ubuntu
#zsh
RUN apt-get update && apt install -y zsh curl
RUN curl -fsSL https://coder.com/install.sh | sh

#vs code
RUN curl -fsSL https://code-server.dev/install.sh :80 | sh
CMD /bin/bash
