FROM miktex/miktex
USER root

RUN apt update
RUN apt install wget -y

WORKDIR /miktex/

RUN wget http://mirrors.ctan.org/biblio/biber/binaries/Linux/biber-linux_x86_64.tar.gz
RUN tar -xvf biber-linux_x86_64.tar.gz
RUN rm biber-linux_x86_64.tar.gz
ENV PATH="/miktex:${PATH}"

WORKDIR /miktex
USER miktex
