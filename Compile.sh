#!/bin/bash
lualatex --halt-on-error resume.tex > /dev/null
rm -f resume.aux resume.log resume.out
