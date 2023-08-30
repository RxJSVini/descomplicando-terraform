
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget unzip && \
    apt-get clean


WORKDIR /home


RUN apt-get install vim -y && \ 
    wget https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip && \
    unzip terraform_1.0.8_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.0.8_linux_amd64.zip

RUN wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" && \
    unzip awscli-exe-linux-x86_64.zip && \
    rm awscli-exe-linux-x86_64.zip && \
    ./aws/install && \
    rm -rf aws

CMD ["/bin/bash"]
