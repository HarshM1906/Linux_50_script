#!/bin/bash

echo "================== BASIC COMMANDS =================="
echo "1. Hello World"
echo "Hello, World!"

echo "2. Current Date"
date

echo "3. Calendar"
cal

echo "4. Current User"
whoami

echo "5. List Files"
ls -l

echo "================== CONDITIONALS =================="
echo "6. Check if file exists"
[ -f myfile.txt ] && echo "File exists" || echo "File not found"

echo "7. Even or Odd"
num=4
[ $((num % 2)) -eq 0 ] && echo "Even" || echo "Odd"

echo "8. Directory exists"
[ -d /etc ] && echo "Directory exists"

echo "9. Compare numbers"
a=5; b=3
[ $a -gt $b ] && echo "$a is greater" || echo "$b is greater"

echo "10. Check user login"
user=$(whoami)
who | grep "$user" && echo "$user is logged in"

echo "================== LOOPS =================="
echo "11. For loop"
for i in {1..5}; do echo "i=$i"; done

echo "12. While loop"
i=1; while [ $i -le 3 ]; do echo $i; i=$((i+1)); done

echo "13. Until loop"
i=1; until [ $i -gt 3 ]; do echo $i; i=$((i+1)); done

echo "14. Read file (using dummy lines)"
echo -e "line1\nline2" > temp.txt
while read line; do echo "Line: $line"; done < temp.txt
rm temp.txt

echo "15. Multiplication table"
num=3; for i in {1..5}; do echo "$num * $i = $((num*i))"; done

echo "================== FUNCTIONS =================="
echo "16. Greet Function"
greet() { echo "Welcome $1"; }
greet "User"

echo "17. Sum Function"
sum() { echo "Sum: $(($1+$2))"; }
sum 5 7

echo "18. Factorial"
factorial() { f=1; for ((i=1;i<=$1;i++)); do f=$((f*i)); done; echo "Fact: $f"; }
factorial 5

echo "19. Palindrome Check"
str="madam"
rev=$(echo $str | rev)
[ "$str" == "$rev" ] && echo "Palindrome" || echo "Not Palindrome"

echo "20. Prime Check"
n=7; count=0
for ((i=2;i<n;i++)); do
  [ $((n%i)) -eq 0 ] && count=1 && break
done
[ $count -eq 0 ] && echo "Prime" || echo "Not Prime"

echo "================== FILE HANDLING =================="
echo "21. Create file"
touch sample.txt

echo "22. Append to file"
echo "Data" >> sample.txt

echo "23. Count lines"
wc -l < sample.txt

echo "24. Copy file"
cp sample.txt copy.txt

echo "25. Delete file"
rm sample.txt copy.txt

echo "================== SYSTEM COMMANDS =================="
echo "26. Disk usage"
df -h | head -n 5

echo "27. Memory usage"
free -m

echo "28. Running processes"
ps aux | head -n 5

echo "29. IP address"
ip a | grep inet | head -n 3

echo "30. Open ports"
netstat -tulpn 2>/dev/null | head -n 5

echo "================== USER INPUT & ARGS =================="
echo "31. Simulated input"
name="TestUser"; echo "Hello $name"

echo "32. Arguments"
set -- Arg1 Arg2; echo "1: $1, 2: $2"

echo "33. Count args"
echo "Count: $#"

echo "34. Print all args"
for arg in "$@"; do echo "Arg: $arg"; done

echo "35. Sum of N numbers"
n=5; sum=0
for ((i=1;i<=n;i++)); do sum=$((sum+i)); done
echo "Sum: $sum"

echo "================== STRING HANDLING =================="
str="HelloLinux"
echo "36. Length: ${#str}"
echo "37. Concat: ${str}World"
echo "38. Substring: ${str:0:5}"
echo "39. Replace: ${str/Linux/World}"
[[ "$str" == *Linux* ]] && echo "40. Contains 'Linux'"

echo "================== MISC =================="
echo "41. Calculator"
a=4; b=2; op="+"; echo "$a $op $b" | bc

echo "42. Leap year check"
year=2024
((year%4==0 && year%100!=0 || year%400==0)) && echo "Leap Year" || echo "Not Leap"

echo "43. Backup (simulate)"
mkdir -p backup; touch backup/data.txt; echo "Backup done."

echo "44. Shutdown command (commented for safety)"
# sudo shutdown now

echo "45. Env variables"
printenv | head -n 3

echo "================== ADVANCED =================="
echo "46. Delete .tmp files"
touch test.tmp; find . -name "*.tmp" -delete

echo "47. Grep pattern"
echo -e "abc\ndef" > file.txt
grep "abc" file.txt
rm file.txt

echo "48. Zip a directory"
mkdir mydir; touch mydir/a.txt
zip -r mydir.zip mydir > /dev/null
rm -r mydir mydir.zip

echo "49. Monitor logs (simulate)"
echo "Monitoring logs (dummy)"
echo -e "log1\nlog2\nlog3" | tail -f -n 2 & sleep 1; kill $!

echo "50. Crontab entry (commented)"
echo "Add to crontab: 0 1 * * * /path/to/backup.sh"

echo "================== END =================="
