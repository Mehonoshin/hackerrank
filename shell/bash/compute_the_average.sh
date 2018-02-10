read N
sum=0

for i in $(seq 1 $N)
do
  read num
  sum=$(($sum + $num))
done
printf "%.3f" $(echo "$sum/$N" | bc -l)
