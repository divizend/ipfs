#!/bin/sh

# Replace the IPv4 with your Fly.io public IPv4 address
ipfs config --json Addresses.AppendAnnounce '["/ip4/137.66.57.12/tcp/4001"]'
