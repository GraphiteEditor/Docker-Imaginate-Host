#!/bin/bash

until metrics="$(curl http://cloudflared-tunnel:7777/metrics)"
do
	echo "Waiting 1 second before querying again for the tunnel address..."
	sleep 1
done

echo Imaginate host address:
grep -Po '"\Khttps://.*?\.trycloudflare.com(?=")' <<< $metrics
# TODO: Send this to a Cloudflare Worker
