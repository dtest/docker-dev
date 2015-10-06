FROM ubuntu:14.04

RUN apt-get update && apt-get install -y --no-install-recommends strace tcpdump build-essential screen git mysql-client libmysqlclient-dev ruby ssh \
  && rm -rf /var/lib/apt/lists/*

# Setup home environment
RUN useradd -d /home/dev -m dev
#ENV PATH /home/dev/bin:$PATH

# Create a shared data volume
# We need to create an empty file, otherwise the volume will
# belong to root.
# This is probably a Docker bug.
RUN mkdir /var/shared/
RUN touch /var/shared/placeholder
RUN chown -R dev:dev /var/shared
VOLUME /var/shared

WORKDIR /home/dev
#ENV HOME /home/dev
# ADD vimrc /home/dev/.vimrc
# ADD vim /home/dev/.vim
ADD bashrc /home/dev/.bashrc
# ADD bashrc /root/.bashrc

# Link in shared parts of the home directory
RUN ln -s /var/shared/.ssh && ln -s /var/shared/.gitconfig
# RUN ln -s /var/shared/.bash_history
# RUN ln -s /var/shared/.maintainercfg

RUN chown -R dev: /home/dev
USER dev
CMD /bin/bash