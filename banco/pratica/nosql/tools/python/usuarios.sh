#!/bin/bash

quant=$(cat usuarios.json | jq 'length')

echo "Quantidade de usuários no arquivo: $quant"
