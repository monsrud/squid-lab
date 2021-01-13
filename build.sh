#!/bin/sh
set -e

CONTAINER_NAME=squid-lab
IMAGENAME=squid-lab
CONTAINER_FE=docker  # or CONTAINER_FE=podman

$CONTAINER_FE container stop ${CONTAINER_NAME} > /dev/null 2>&1 || true
$CONTAINER_FE container rm ${CONTAINER_NAME} true > /dev/null 2>&1 || true

$CONTAINER_FE build -t $IMAGENAME --rm=true --force-rm=true --no-cache .
echo ""
echo "Start your container with the command:"
echo ""
echo "$CONTAINER_FE run --name ${CONTAINER_NAME} -d -v ${CONTAINER_NAME}-etc:/etc/squid \\
     -v ${CONTAINER_NAME}-logs:/var/log/squid \\
     -v ${CONTAINER_NAME}-cache:/var/cache/squid -p 3128:3128 ${IMAGENAME}"


