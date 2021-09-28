# Dockerized version of [aws-vault](https://github.com/99designs/aws-vault)

### Getting started

Build the container:

```shell
docker build . -t aws-vault
```

Launch the Docker container that wraps aws-vault:

```shell
docker run 
  --rm 
  -it
   -v $(pwd)/keys:/home/linuxbrew/.awsvault/keys/ 
   aws-vault 
   [command]
```

Substituting [command] with any of the aws-vault commands, e.g. "list", "add", "exec", etc.
