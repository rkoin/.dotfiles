#!/bin/sh
pushd ~/.dotfiles
home-manager switch -f ./users/clone/home.nix
popd
