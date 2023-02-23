FROM haskell:9.2
WORKDIR /src
COPY . .
RUN stack setup
RUN stack build --install-ghc --copy-bins --local-bin-path ./bin
CMD ./bin/sorting-algo-func-hs-exe
