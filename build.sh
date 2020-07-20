echo "# Hey there 👋

I don’t really know what to add here, so here is the random number that will be updated once an hour: **$(shuf -i 0-100 -n 1)**" > README.md

RANDOM_FACT=$(curl https://uselessfacts.jsph.pl/random.md)
if [ -n "$RANDOM_FACT" ]; then
  echo "" >> README.md
  echo "And here is the random useless fact:" >> README.md
  echo "" >> README.md
  echo "$RANDOM_FACT" >> README.md
fi
