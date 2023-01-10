(lang dune 3.0)

(use_standard_c_and_cxx_flags true)

(generate_opam_files true)

(name bls12-381-signature)

(homepage "https://nomadic-labs.gitlab.io/cryptography/ocaml-bls12-381-signature/bls12-381-signature/")
(source (uri "git+https://gitlab.com/nomadic-labs/cryptography/ocaml-bls12-381-signature.git"))
; (source (gitlab nomadic-labs/cryptography/ocaml-bls12-381-signature))
; Dune doesn't allow the `source` field in `dune-project` to contain a link in
; a format other than `user/repo`. See
; https://github.com/ocaml/dune/issues/6723.
(license MIT)
(authors "Danny Willems <be.danny.willems@gmail.com>")
(maintainers "Danny Willems <be.danny.willems@gmail.com>")
(bug_reports "https://gitlab.com/nomadic-labs/cryptography/ocaml-bls12-381-signature/-/issues")

(package
 (name bls12-381-signature)
 (synopsis "Implementation of BLS signatures for the pairing-friendly curve BLS12-381")
 (depends
  (ocaml (>= 4.08))
  (bls12-381 (and (>= 6.0.1) (< 7.0.0)))
  (alcotest :with-test)
  (bisect_ppx (and :with-test (>= 2.5)))
  (integers_stubs_js :with-test)))

