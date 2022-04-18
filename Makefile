all: | cluster package-repository dependencies workload

cluster:
	tanzu unmanaged-cluster create tce

package-repository:
	tanzu package repository add tce-stg \
		--url projects-stg.registry.vmware.com/tce/main:v0.12.0-alpha.3984.2

.PHONY: dependencies
dependencies:
	$(MAKE) -C dependencies all

workload:
	kapp deploy --yes --diff-changes \
		-a workload \
		-f ./workload.yaml
