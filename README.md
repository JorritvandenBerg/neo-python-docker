# neo-python-bootstrapped
Dockerfile and entrypoint script to bootstrap the NEO test chain in neo-python

Docker image at: https://hub.docker.com/r/jorritvandenberg/neo-python-bootstrapped/

To run the container with a mounted volume:
docker run -it -v /host/path/to/where/you/want/to/store/the/test/chain:/neo-python/Chains jorritvandenberg/neo-python-bootstrapped

To add an existing wallet from your host to the container:
docker run -it -v /host/path/to/where/you/want/to/store/the/test/chain:/neo-python/Chains -v /host/path/to/wallet:/neo-python/wallet jorritvandenberg/neo-python-bootstrapped

After closing the containers, the chain will be available in on the path that you defined. Make sure that you close your wallet in neo-python ("wallet close") before shutting down the container. Otherwise the wallet get's stuck in a vulnerable state.

