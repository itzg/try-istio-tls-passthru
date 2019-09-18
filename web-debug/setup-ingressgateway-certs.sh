#!/bin/bash

openssl req -x509 -newkey rsa:2048 -keyout server_key.pem -out server.pem -days 365 -nodes -subj "/CN=my-gateway"

kubectl create secret tls -n istio-system --cert=server.pem --key=server_key.pem istio-ingressgateway-certs