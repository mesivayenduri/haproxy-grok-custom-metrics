helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

helm install grafana grafana/grafana \
  --namespace development \
  --create-namespace \
  --set adminPassword='admin' \
  --set service.type=NodePort \
  --set persistence.enabled=true \
  --set persistence.size=1Gi


1. Get your 'admin' user password by running:

   kubectl get secret --namespace development grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo       


2. The Grafana server can be accessed via port 80 on the following DNS name from within your cluster:

   grafana.development.svc.cluster.local

   Get the Grafana URL to visit by running these commands in the same shell:
     export NODE_PORT=$(kubectl get --namespace development -o jsonpath="{.spec.ports[0].nodePort}" services grafana)     
     export NODE_IP=$(kubectl get nodes --namespace development -o jsonpath="{.items[0].status.addresses[0].address}")    
     echo http://$NODE_IP:$NODE_PORT

3. Login with the password from step 1 and the username: admin