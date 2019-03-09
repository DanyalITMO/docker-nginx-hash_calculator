#don't work
for d in $(find . -maxdepth 1 -type d -not -path '*/\.*' -not -path ".")
do
  echo $d
  $d/build.sh
done 
