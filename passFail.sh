echo "Enter number subject marks" 
read n
sum=0
x=0
count=0
while [ $x -lt $n ]
do 
	echo "Enter marks of course"
	read m
	sum=`expr $sum + $m`
	if [ $m -lt 40 ]
	then	
		echo "You failed in this course"
		count=`expr $count + 1`
	else
		echo "You passed in this course"
	fi
	x=`expr $x + 1`
done	
avg=`echo "scale=2;$sum/$n"|bc`
echo "Average marks obtained: $avg"
echo "You failed in $count subjects"	
