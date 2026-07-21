#!/bin/bash

set -e

echo "Rolling back..."

oc rollout undo deployment/nginx-app \
-n ${OPENSHIFT_NAMESPACE}

echo "Waiting..."

oc rollout status deployment/nginx-app \
-n ${OPENSHIFT_NAMESPACE}

echo "Rollback complete."