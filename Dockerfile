FROM ipfs/kubo:latest

# Copy configuration script
COPY ipfs-config.sh /container-init.d/ipfs-config.sh
RUN chmod +x /container-init.d/ipfs-config.sh

# Expose necessary ports
EXPOSE 8080 5001 4001 4001/udp

# Set entrypoint to initialize and run IPFS daemon
ENTRYPOINT ["/bin/sh", "-c", "\
  if [ ! -f \"$IPFS_PATH/config\" ]; then \
    ipfs init --profile=server; \
    /container-init.d/ipfs-config.sh; \
  fi && \
  ipfs daemon --enable-gc --migrate=true 2>&1 \
"]