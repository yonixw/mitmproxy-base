FROM ubuntu

# ENV LANG=en_US.UTF-8

# Add our user first to make sure the ID get assigned consistently,
# regardless of whatever dependencies get added.

RUN apt update
RUN apt install -y \
        git \
        g++ \
        #libffi \
        libffi-dev \
        #libstdc++ \
        openssl \
        #openssl-dev \
        python3 
        #python3-dev 
RUN apt install python3-pip -y

RUN pip3 install -U pip \
    && LDFLAGS=-L/lib pip3 install mitmproxy 

RUN apt remove -y \
        git \
        g++ \
        libffi-dev \
        #openssl-dev \
        #python3-dev \
    && apt autoremove -y \
    && rm -rf ~/.cache/pip

VOLUME /root/.mitmproxy

EXPOSE 8080 8081

CMD ["mitmproxy"]
