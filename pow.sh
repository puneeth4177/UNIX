echo "Enter number"
read n
echo "Enter power"
read p

res=1
for (( i=1;i<=p;i++ ))	
do 
	res=`expr $n \* $res`
done

echo -n "$n power $p is :"
echo $res
	
