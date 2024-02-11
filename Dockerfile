FROM rockylinux:8-minimal

RUN set -eux \
	&& microdnf update \
	&& microdnf module enable python39 \
	&& microdnf install -y epel-release \
	&& sed -i.bak 's/enabled=0/enabled=1/' /etc/yum.repos.d/Rocky-PowerTools.repo

RUN set -eux \
	&& microdnf install -y java-17-openjdk-headless git python39 podman-docker

RUN set -eux \
	&& pip3 install --no-cache virtualenv
