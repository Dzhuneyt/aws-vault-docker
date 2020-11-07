FROM homebrew/ubuntu20.04

# Preserve vault lock files across container restarts,
# as long as the image is not recycled
# @TODO This is not finished yet
VOLUME ["/root/.awsvault"]

# Install aws-vault
RUN brew install aws-vault

ENV AWS_VAULT_BACKEND="file"
