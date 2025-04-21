#!/bin/sh

# Replace YOUR_IPV4_HERE with your Fly.io public IPv4 address
ipfs config --json Addresses.AppendAnnounce '["/ip4/168.220.83.224/tcp/4001"]'
