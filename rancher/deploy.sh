export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
helm repo add rancher-stable https://releases.rancher.com/server-charts/stable

kubectl apply -f rancher-namespace.yaml
helm install rancher rancher-stable/rancher \
  --namespace cattle-system \
  --set hostname=rancher.yourdomain.com \
  --set tls=external
kubectl apply -f rancher-ingress-route.yaml

