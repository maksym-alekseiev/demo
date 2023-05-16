# Demo

## How to connect to the UI

Configure a port forwarding running the following command:
kubectl port-forward svc/argocd-server -n argocd 8080:443&

Open a website in your browser with the following address:
https://127.0.0.1:8080/

You can specify any port you need