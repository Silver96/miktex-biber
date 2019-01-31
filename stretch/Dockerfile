FROM silas96/miktex-stretch
USER root

RUN apt update
RUN apt install -y \
  wget

RUN wget http://mirrors.ctan.org/biblio/biber/binaries/Linux/biber-linux_x86_64.tar.gz
RUN tar -xvf biber-linux_x86_64.tar.gz
RUN rm biber-linux_x86_64.tar.gz
RUN mv biber /usr/bin/

WORKDIR user
USER user
