echo "This needs to be run when online, but it creates a shared docker container to be used with the accompanying devcontainer.json file, and then creates a docker volume for ruby gems cache"
docker build -t local-jekyll:latest .
docker volume create jekyll-bundle-cache