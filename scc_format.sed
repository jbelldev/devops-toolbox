#!/usr/bin/env -S sed -f
s/\(\[\|,\)[[:space:]]\{0,1\}provider/\n\1 provider/g
