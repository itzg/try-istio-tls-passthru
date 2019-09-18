## Trying this out

Search and replace all mentions of `example.com` with a domain that you actually manage. _I was too lazy to use Helm or kustomize to templatize the project._

With that you can `kubectl apply -f` each directory to a cluster that has Istio installed. If you don't have an Istio enabled cluster yet, one can be easily [created on Google Cloud](https://cloud.google.com/istio/docs/istio-on-gke/installing)