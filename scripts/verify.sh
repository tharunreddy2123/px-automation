#!/bin/bash

set -e

echo "Checking rollout..."

oc rollout status deployment/nginx-app \
-n ${OPENSHIFT_NAMESPACE} \
--timeout=180s

echo "Checking pods..."

oc get pods -n ${OPENSHIFT_NAMESPACE}

echo "Deployment successful."