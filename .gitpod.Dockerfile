FROM gitpod/workspace-base

RUN echo "deb http://downloads.haskell.org/debian buster main" | sudo tee -a /etc/apt/sources.list \
    && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 \
    && sudo apt-get update && sudo apt-get install ghc-8.10.4 cabal-install-3.2 -y
ENV PATH $PATH:/opt/ghc/bin
