
arr = ['Pineapple','Apple','Peach','Apelsin','Plum','Banana']

$i = 0
$num = 5

while $i < $num  do
  puts("Inside the loop i = #$i" )
  $i +=1
end
  print "\n"
$i = 0
$num = 5
until $i > $num  do
  puts("Inside the loop i = #$i" )
  $i +=1;
end
  print "\n"

$i = 0
$num = 5
begin
  puts("Inside the loop i = #$i" )
  $i +=1;
end until $i > $num