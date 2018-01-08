################################################################################
# nix
################################################################################
.PHONY: nix-build
nix-build:
	nix-shell --argstr compiler ghc802 --run "cabal configure; cabal build"

.PHONY: nix-test
nix-test:
	nix-shell --argstr compiler ghc802 --run "cabal configure --enable-test spec; cabal build; cabal test --test-options=\"--rerun --failure-report=./dist/test-results.txt --rerun-all-on-success\""

.PHONY: nix-clean
nix-clean:
	rm -rf dist

.PHONY: nix-gen
nix-gen:
	cabal2nix --shell ./. >shell.nix

.PHONY: nix-run
nix-run:
	./dist/build/haskell-todo-exe/haskell-todo-exe

.PHONY: nix-freeze-hab
nix-freeze-hab:
	nix-shell --run "cabal freeze"
	mv cabal.config habitat/cabal.config
