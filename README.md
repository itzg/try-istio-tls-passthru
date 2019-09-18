## Trying this out

Search and replace all mentions of `example.com` with a domain that you actually manage. _I was too lazy to use Helm or kustomize to templatize the project._

Create a DNS entry for the hosts `openssl` and `web-debug` in your domain pointing at the external IP address of your Istio ingress gateway service.

Generate a TLS termination cert and install it for the ingressgateway by running the script `web-debug/setup-ingressgateway-certs.sh`

With that you can `kubectl apply -f` each directory to a cluster that has Istio installed. If you don't have an Istio enabled cluster yet, one can be easily [created on Google Cloud](https://cloud.google.com/istio/docs/istio-on-gke/installing)

## Verifying

A `curl -kv https://openssl.YOUR_DOMAIN` should report a cert issued by `CN=CA` and has a subject of `CN=server`.

A `curl -kv https://web-debug.YOUR_DOMAIN` should report a cert issued by and has a subject of `CN=my-gateway`.