FROM rockylinux:8-minimal

RUN set -eux \
	&& microdnf install -y epel-release \
	&& sed -i.bak 's/enabled=0/enabled=1/' /etc/yum.repos.d/Rocky-PowerTools.repo

RUN set -eux \
	&& microdnf install -y java-17-openjdk-headless git python3 python3-virtualenv
