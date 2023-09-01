# Build da image
    docker image build -t terraform_azure:latest .

# Ao acessar o ambiente docker
    docker container run -it terraform_azure bash


# Criando container e compartilhando algum volume
docker container run -v %cd%\azure:/home -it terraform_azure bash


# Login no Azure
*** No Azure o funcionamento é diferente, precisamos usar o conceito de service-principal ***
https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli

# Adicionando permissões para um service principal
https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal


*** When authenticating as a Service Principal using a Client Secret, the following fields can be set: ***

*** client_secret - (Optional) The Client Secret which should be used. This can also be sourced from the ARM_CLIENT_SECRET Environment Variable. ***

*** client_secret_file_path - (Optional) The path to a file containing the Client Secret which should be used. This can also be sourced from the ARM_CLIENT_SECRET_FILE_PATH Environment Variable. ***



# Minha configuração

export AZ_APP_ID=
export AZ_TENANT_ID=
export AZ_APP_SECRET=

COMMAND az login --service-principal -u $AZ_APP_ID -p $AZ_APP_SECRET --tenant $AZ_TENANT_ID