#!/bin/sh

TF_ALKS_PROVIDER_VERSION=$1

echo "Installing terraform alks provider v${TF_ALKS_PROVIDER_VERSION}"
wget -q -O /tmp/tfalks.tar.gz https://github.com/Cox-Automotive/terraform-provider-alks/releases/download/${TF_ALKS_PROVIDER_VERSION}/terraform-provider-alks-linux-amd64.tar.gz && \
mkdir -p ~/.terraform.d/plugins/ && \
mkdir -p /tmp/versions/ && \
tar -zxvf /tmp/tfalks.tar.gz -C /tmp/versions/ && \
mv /tmp/versions/terraform-provider-alks* ~/.terraform.d/plugins/terraform-provider-alks_v${TF_ALKS_PROVIDER_VERSION} && \
rm /tmp/tfalks.tar.gz && \
rm -r /tmp/versions && \
chmod a+x ~/.terraform.d/plugins/terraform-provider-alks*
echo "Installed ${TF_ALKS_PROVIDER_VERSION}"
