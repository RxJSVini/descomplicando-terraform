FROM ubuntu:latest

WORKDIR /home

RUN apt-get update && \
    apt-get install -y wget unzip && \
    apt-get install curl -y && \
    apt-get clean

RUN apt-get install vim -y && apt-get install git -y && \ 
    wget https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip && \
    unzip terraform_1.0.8_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.0.8_linux_amd64.zip

RUN wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" && \
    unzip awscli-exe-linux-x86_64.zip && \
    rm awscli-exe-linux-x86_64.zip && \
    ./aws/install && \
    rm -rf aws

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

CMD ["/bin/bash"]