#!/usr/bin/env bash

export AWS_VAULT_BACKEND="file"
export AWS_VAULT_FILE_PASSPHRASE=$(cat file.txt)

aws-vault "$@"
