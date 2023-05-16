# Demo

## How to connect to the UI

Configure a port forwarding running the following command:
kubectl port-forward svc/argocd-server -n argocd 8080:443&

Open a website in your browser with the following address:
https://127.0.0.1:8080/

Use "admin" as a username.
To pull the default password run the following command:
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo