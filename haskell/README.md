# what is this?
template directory for haskell project using nix

# requirement
- **nix** ... package manager
- **just** ... task runner

# usage
1. run `nix flake new -t github:pjmtdw/my-private-flake#haskell ./my-hakell-project`
2. change `app_name := ...` in `./justfile` to your own
3. run `just init`
4. run `just develop` to start shell which has `ghc` and `haskell-language-server` in it. you can use any editor.
5. run `just build` or `just run`

Note: after doing `git init`, you have to `git add flake.nix` otherwise nix cannot see it.

# references
this code uses [haskell flake](https://github.com/srid/haskell-flake)
