oc new-project gitlab
sudo oc login -u system:admin
sudo oc adm policy add-scc-to-user anyuid -z default -n gitlab
oc new-app -f secret-template.yaml
oc-apply
