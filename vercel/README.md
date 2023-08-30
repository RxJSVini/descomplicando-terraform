
# Build da image
    docker image build -t vercel:latest .

# Ao acessar o ambiente docker
    docker container run -it vercel bash

# Pege suas credências, e digite o seguintes comandos(passando os valores junto as keys)
   export VERCEL_API_TOKEN=
   export VERCEL_TERRAFORM_TESTING_GITHUB_REPO=https://github.com/RxJSVini/aluraquiz.git


# Link
https://vercel.com/guides/integrating-terraform-with-vercel