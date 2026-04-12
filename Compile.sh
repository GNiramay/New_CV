#!/bin/bash

# # Basic execution.
# lualatex --halt-on-error resume.tex > /dev/null
# rm -f resume.aux resume.log resume.out

# Taking care of personal information
cp -f Personal/contacts_actual.tex Personal/contacts.tex
latexmk -lualatex resume.tex
rm -f resume.aux resume.fdb_latexmk resume.fls resume.log resume.out
mv -f resume.pdf Personal/
git restore resume.pdf Personal/contacts.tex
