
# Build da image
    docker image build -t terraform_aws:latest .

# Ao acessar o ambiente docker
    docker container run -it terraform_aws bash


# Criando container e compartilhando algum volume
docker container run -v %cd%\aws:/home -it terraform_aws bash

# Pege suas credências, e digite o seguintes comandos(passando os valores junto as keys)
    export AWS_ACCESS_KEY_ID=
    export AWS_SECRET_ACCESS_KEY=

