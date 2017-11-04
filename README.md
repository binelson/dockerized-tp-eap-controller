# dockerized-tp-eap-controller

## Overview

The point of this is to have a simple dockerized container which can run the TP-Link EAP Controller

To simply run this, you can do the following:

    docker run --net host binelson/tp-eap-controller:2.4.8

We need host networking in order for certain layer2 functions to work, specifically firmware uploads.

## Docker Compose

The included docker compose file can be run as well, which also sets up a volume to store the mongodb data

    docker-compose -f ./tp-eap-compose.yml up -d

