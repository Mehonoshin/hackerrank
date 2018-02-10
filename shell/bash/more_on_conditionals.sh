read X
read Y
read Z

if [ $X != $Y ] && [ $X != $Z ] && [ $Y != $Z ]; then
  echo "SCALENE"
elif [ $X == $Y ] && [ $X == $Z ]; then
  echo "EQUILATERAL"
else
  echo "ISOSCELES"
fi
