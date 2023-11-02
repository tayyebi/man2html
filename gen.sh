man -k . | ansi2html > index.html

while IFS="" read -r p || [ -n "$p" ]
do
  stringarray=($p)
  d="${stringarray[0]}"
  man $d | ansi2html > $d.html
done < index.html
