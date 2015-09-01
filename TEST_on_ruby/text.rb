=begin

     $     - глобальная переменная
     @     - переменная в классе
[a-z] or _ - локальная переменная
   [A-Z]   - константа

=end

trace_var :$x, proc { print "$x is now ", $x, "\n" }
$x = 5


line = 'SOME_TEXT'
#concatination  +
print 'LINE'+'_'+'ONE'+"\n"
#.length
print 'Linew_two'.length, "\n"
#dublicate  *
print 'Line_three'*2, $/
#last leter     'SOME_TEXT'
print line.slice(line.length-1) + $/
print line[line.length-1] + $/
print line[-5..-1] + $/
print line[0..4] + $/
# each_byte
"Hello World".each_byte { |c| printf "-=%c=-", c }; print "\n"
#each_line
"H\ne\nl\nl\no\n".each_line { |c| print c }

<<-DOC
Здесь записан простой текст.
Здесь записан простой текст.
Здесь записан простой текст.
Здесь записан простой текст.
Здесь записан простой текст.
Здесь записан простой текст.
DOC
# -> 'Здесь записан простой текст'

n = 122.method("+")
print n.call(12), $/
print n.call(20), $/


print '10 -->',"%b "%36,"%b"% 36 , $/
print 'i --> ', "%d" % 0x04bfe , $/
print '8 --> ', "%o" % 36  , $/
print '16 --> ', "%x" % 36  , $/