#!/bin/bash

set -e

echo "Installing OpenShift CLI..."

curl -LO https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz

tar -xzf oc.tar.gz

sudo mv oc /usr/local/bin/

oc version --client