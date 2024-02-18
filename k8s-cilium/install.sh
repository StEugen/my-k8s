sudo apt-get install kubelet=1.21.0-00 kubeadm=1.21.0-00 kubectl=1.21.0-00
sudo kubeadm init --pod-network-cidr=10.1.1.0/24
mkdir -p $HOME/.kube
sudo cat /etc/kubernetes/admin.conf > $HOME/.kube/config
cilium install --version 1.15.1
kubectl taint nodes --all node-role.kubernetes.io/master-
