iconv -c -f UTF-8-MAC -t UTF-8 $1 | \
pandoc \
  -f markdown \
  -o $2 \
  --highlight-style=tango \
  --listing \
  -V documentclass=ltjltxdoc \
  -V classoption=titlepage \
  -V urlcolor=blue \
  -H preamble.tex \
  --latex-engine=lualatex \
  --toc \
  -N \
  --template=default.latex #\
  # --verbose
