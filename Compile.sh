#!/bin/bash

# # Basic execution.
# lualatex --halt-on-error resume.tex > /dev/null
# rm -f resume.aux resume.log resume.out

# Expected to be more effective
latexmk -lualatex resume.tex
rm -f resume.aux resume.fdb_latexmk resume.fls resume.log resume.out
