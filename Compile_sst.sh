#!/bin/bash
# Build the SST-tailored CV variant (same contact handling as Compile.sh)
rm -f Personal/contacts.tex
cp -f Personal/contacts_actual.tex Personal/contacts.tex
latexmk -lualatex resume_sst.tex
rm -f resume_sst.aux resume_sst.fdb_latexmk resume_sst.fls resume_sst.log resume_sst.out
mv -f resume_sst.pdf Personal/
git restore Personal/contacts.tex
