#! /usr/bin/env bash

glibtoolize

aclocal -I m4

automake

autoconf

./configure
