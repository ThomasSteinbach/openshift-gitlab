oc new-project gitlab || oc project gitlab
sudo oc login -u system:admin
sudo oc adm policy add-scc-to-user anyuid -z default -n gitlab
sudo oc create sa privilegeduser -n gitlab
sudo oc adm policy add-scc-to-user privileged -z privilegedusera -n gitlab
oc new-app -f secret-template.yaml
oc-apply
