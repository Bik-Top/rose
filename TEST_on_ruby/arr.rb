=begin

$! - последнее сообщение об ошибке
$@ - местоположение ошибки
$_ - последняя строка, прочитанная gets
$. - номер последней строки, прочитанной интерпретатором
$& - последняя строка, обработанная regexp
$~ - последнее совпадение с regexp, как массив подвыражений
$n - nth-е подвыражение в последнем совпадении(то же самое, что и $~[n])
$= - флаг зависимости от регистра символов
$/ - разделитель во входных строках
$\ - разделитель в выходных строках
$0 - имя файла со скриптом Ruby
$* - аргументы командной строки
$$ - ID процесса интерпретатора
$? - статус завершения последнего дочернего процесса

=end
#arr
arr = ['Pineapple','Apple','Peach','Apelsin','Plum','Banana']

#краткая запись
arr = %w[ Pineapple Apple Peach Apelsin Plum Banana]

print arr , $/

print '.first - ', arr.first, $/
print '.last - ', arr.last, $/
print '.empty - ', arr.empty?, $/
print '.take(3) - ', arr.take(3), $/
print '.drop(3) - ', arr.drop(3), $/
print 'Output "arr" = ',  arr, $/        #['Pineapple','Apple','Peach','Apelsin','Plum','Banana']

print  arr.each{ |a|  print a+' frut ', ":" } , $/
print '.map - ',  arr.map { |a| a[0] } , $/

print  $/,'.length = ', arr.length, $/                       #6  real 6-1
print '.count - ', arr.count   , $/, $/

print 'Output "arr" SORT!!! = ', arr=arr.sort, "\n\n" #["Apelsin", "Apple", "Banana", "Peach", "Pineapple", "Plum"]
print 'Output "[2, 3]" = ', arr[2, 1], "\n"
print 'Output "[-5, 2]" = ', arr[-5, 2], "\n"#Начиная с позиции -5 взять 2 елемента
print 'Output "[-5..3]" = ', arr[-5..3], "\n"
print 'Output "[-5...3]" = ', arr[-5...3], "\n"

print 'join'.upcase, "\n"#join
str = arr.join(':')
print str, $/        # 1:2:3:asdf +

print 'split'.upcase, "\n" #split
arr2 = str.split(':')
print 'arr2 - ', arr2, "\n"     #["Apelsin", "Apple", "Banana", "Peach", "Pineapple", "Plum"]

arr3 =["1", "2", "3", "asdf1", "11", "2", "3", "asdf2"]
print '.uniq - ', arr3.uniq , "\n"
      arr3 =["1", "2", "3", "asdf1", nil, "2", "3", nil]
      print '.compact - ', arr.compact , "\n"

print 'Хесшшы'.upcase, "\n" # Хесшшы
h = {1 => 999, 'first' => 'variable'}
print h, $/,
      h[1], $/,  # "variable",
      h['first'], $/  # "variable"

inst_section = {
    скрипка: 'струнные инструменты' ,
    :дудка => 'деревянные духовые инструменты' ,
    'барабан' => 'ударные инструменты'
}
print 'inst_section - ', inst_section[:скрипка],' || ', inst_section[:дудка], ' || ', inst_section['барабан'], $/
H = Hash["a" => 'ЭТО А' , "b" => 'ЭТО В']

print "#{H['a']}", $/
puts "#{H['b']}"


def fact (n)
  (n!=0)? n * fact(n-1): 1
end

print fact(5), $/

s1 = "forth"
print s1.chop!, $/


