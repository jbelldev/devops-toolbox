#!/usr/bin/env -S sed -f
# Corrects SecurityContextConstraint errors into something legible
# Usage: cat scc.txt | scc_format.sed

s/\(\[\|,\)[[:space:]]\{0,1\}provider/\n\1 provider/g
