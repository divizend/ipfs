FROM ipfs/kubo:latest

COPY ipfs-config.sh /container-init.d/01-ipfs-config.sh
RUN chmod +x /container-init.d/01-ipfs-config.sh

EXPOSE 8080 5001 4001

ENTRYPOINT ["/bin/sh", "-c", "\
  if [ ! -f \"$IPFS_PATH/config\" ]; then \
    ipfs init --profile=server; \
  fi && \
  ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080; \
  ipfs daemon --enable-gc --migrate=true \
"]
