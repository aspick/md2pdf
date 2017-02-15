script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
iconv -c -f UTF-8-MAC -t UTF-8 $1 | \
pandoc \
  -f markdown \
  -o $2 \
  --highlight-style=tango \
  --listing \
  -V documentclass=ltjltxdoc \
  -V classoption=titlepage \
  -V urlcolor=blue \
  -H ${script_dir}/preamble.tex \
  --latex-engine=lualatex \
  --toc \
  -N \
  --template=${script_dir}/default.latex #\
  # --verbose
