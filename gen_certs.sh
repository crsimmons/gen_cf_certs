#!/bin/bash

set -eu

bosh interpolate gen_certs.yml -v domain="$DOMAIN" --vars-store certs.yml

bosh int --path /cert certs.yml
