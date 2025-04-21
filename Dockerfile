FROM ipfs/kubo:latest

COPY ipfs-config.sh /container-init.d/01-ipfs-config.sh
RUN chmod +x /container-init.d/01-ipfs-config.sh

EXPOSE 8080 5001 4001

ENTRYPOINT ["ipfs", "daemon", "--enable-gc", "--migrate=true"]
