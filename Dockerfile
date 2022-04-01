FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Update, upgrade and install packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y locales python3 python3-pip python3-venv python3-dev bash vim git nodejs && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

# User and group
RUN groupadd wonky && \
    useradd -rm -d /home/wonky -s /bin/bash -g wonky wonky && \
    echo "wonky:$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 20 | head -n 1)" | chpasswd

ENV LANG en_US.UTF-8

# Copy scripts
COPY start-notebook.sh start-project.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

# Create user
USER wonky
WORKDIR /home/wonky

# Install jupyterlab
COPY ./requirements.txt .
RUN python3 -m venv .venv && \
    . .venv/bin/activate && \
    pip install -r requirements.txt && \
    rm requirements.txt

CMD ["start-notebook.sh"]
