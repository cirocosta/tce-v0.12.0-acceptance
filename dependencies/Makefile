all: cert-manager secretgen-controller kpack kpack-dependencies cartographer cartographer-catalog fluxcd-source-controller


cert-manager:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 1.6.1

secretgen-controller:
	kapp deploy --yes \
		-a $@ \
		-f https://github.com/vmware-tanzu/carvel-secretgen-controller/releases/download/v0.8.0/release.yml

kpack:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 0.5.1 \
		--values-file $@.yaml

kpack-dependencies:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 0.0.9 \
		--values-file $@.yaml

cartographer:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 0.3.0

cartographer-catalog:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 0.3.0 \
		--values-file $@.yaml


fluxcd-source-controller:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 0.21.2

knative-serving:
	tanzu package install $@ \
		--package-name $@.community.tanzu.vmware.com \
		--version 1.0.0
