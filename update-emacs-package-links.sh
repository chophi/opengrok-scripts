#!/bin/bash
target_dir=~/.emacs-pkg/opengrok/jar-version
rm -rf $target_dir/*
ln -sf $PWD/clj-opengrok $target_dir
ln -sf $PWD/clj-search-help.txt $target_dir
ln -sf $PWD/index-help.txt $target_dir
