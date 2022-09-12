.PHONY: build build_and_push
DOCKER_REPOSITORY="ericreeves/consul-envoy"
CONSUL_VERSION=1.13.1-ent
ENVOY_VERSION=1.23.1

build:
	docker build --build-arg CONSUL_VERSION=${CONSUL_VERSION} --build-arg ENVOY_VERSION=${ENVOY_VERSION} -t "${DOCKER_REPOSITORY}:v${CONSUL_VERSION}-v${ENVOY_VERSION}" .

build_and_push: build
	docker push "${DOCKER_REPOSITORY}:v${CONSUL_VERSION}-v${ENVOY_VERSION}"
