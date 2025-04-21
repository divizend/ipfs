#!/bin/sh

# Replace the IPv4 with your Fly.io public IPv4 address
ipfs config --json Addresses.AppendAnnounce '["/ip4/168.220.83.224/tcp/4001"]'
