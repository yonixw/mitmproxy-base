# mitmproxy-base
Ubuntu base dockerfile for mitmproxy

## Changes
* changed to ubuntu packages
* changed `.mitmproxy` volume (for certificates)
* download latest mitmproxy from pip and not building from source

## Paths
* `/usr/local/lib/python3.8/dist-packages/mitmproxy`
* `/root/.mitmproxy`
