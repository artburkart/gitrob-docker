#!/bin/bash
set -e

for i in $(compgen -A variable | grep "GH_TOKEN")
do
    if [ ! -z "${!i}" ] && ! grep -q "${!i}" /root/.gitrobrc ; then
        echo "- ${!i}" >> /root/.gitrobrc
    fi
done

# Accept user agreement
ruby accept_agreement.rb
gitrob --threads $GR_THREADS -o $GH_ORG -b $GR_BIND_ADDRESS
