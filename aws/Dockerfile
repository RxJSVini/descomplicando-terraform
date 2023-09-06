FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget unzip curl vim git && \
    wget https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip && \
    unzip terraform_1.0.8_linux_amd64.zip -d /usr/local/bin/ && \
    rm terraform_1.0.8_linux_amd64.zip && \
    wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" && \
    unzip awscli-exe-linux-x86_64.zip && \
    rm awscli-exe-linux-x86_64.zip && \
    ./aws/install && \
    rm -rf aws && \
    apt-get clean && \
    apt-get install -y apt-transport-https ca-certificates && \
    curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y kubectl && \
    terraform init -upgrade

WORKDIR /home

CMD ["/bin/bash"]
