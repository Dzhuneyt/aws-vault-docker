FROM homebrew/ubuntu20.04

# Install aws-vault
RUN brew install aws-vault

# Install AWS CLI
RUN brew install awscli

# Install utility for generating a random keystore file password
RUN sudo apt-get install -y util-linux

# Generate a random passphrase, to be used as password for the keystore file of aws-vault
RUN export UUID=`uuidgen` && echo $UUID >> file.txt

# Prepare an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
