#!/bin/bash

set -ex

GOATCOUNTER_VERSION=v2.5.0

# Construct download URL
URL="https://github.com/arp242/goatcounter/releases/download/$GOATCOUNTER_VERSION/goatcounter-$GOATCOUNTER_VERSION-$TARGETOS-$TARGETARCH.gz"

# Download and extract
wget "$URL" -O goatcounter.gz
gzip -d goatcounter.gz
mv goatcounter /usr/bin/goatcounter
chmod +x /usr/bin/goatcounter
