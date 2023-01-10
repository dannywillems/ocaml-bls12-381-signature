# OCaml implementation of BLS signatures for BLS12-381

Follow the BLS signatures described in [this
specification](https://tools.ietf.org/pdf/draft-irtf-cfrg-bls-signature-04.pdf).
Both instantiations, i.e. the one minimizing the public key size and the one
minimizing the signature size, are provided.

Documentation available [here](https://nomadic-labs.gitlab.io/cryptography/ocaml-bls12-381-signature/bls12-381-signature/)

## Install


```shell
opam install bls12-381-signature
```

## Run tests

```
dune runtest
```

To get the coverage:
```
dune runtest --instrument-with bisect_ppx --force
bisect-ppx-report html
```

Run JavaScript tests
```
npm install
dune build @runtest-js
```

## Run the benchmarks

Install `core_bench`:

```
opam install core_bench
```

See files listed in the directory `benchmark` and execute it with `dune exec`. For instance:
```
dune exec ./benchmark/bench_signature.exe
```

## Documentation

```
opam install odoc
dune build @doc
```
