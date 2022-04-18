1. create the cluster

	make cluster


2. install the pkgr

	make package-repository


3. install the dependencies

	3.1 update the following with the registry you want

		./dependencies/kpack.yaml
		./dependencies/kpack-dependencies.yaml
		./dependencies/cartographer-catalog.yaml


	3.2 install

		make dependencies


4. submit the workload

	4.1 setup the secret

		tanzu secret registry add registry-credentials \
			--server REGISTRY-SERVER \
			--username REGISTRY-USERNAME \
			--password REGISTRY-PASSWORD


	4.2 submit the workload

		make workload
