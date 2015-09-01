=begin

ћодули в Ruby аналогичны классам, за исключением:
- модуль не может иметь представителей.
- модуль не может иметь подклассов.
- модуль определ€етс€ конструкцией module ... end.

=end

# ћодуль Math в стандартной библиотеке Ruby
print Math::PI, $/
#≈сли мы хотим пр€мо ссылатьс€ на методы или константы модул€ без использовани€ ::, мы можем включить (include) нужный модуль
include Math
print  PI, $/

print "sqrt = ", Math.sqrt(16), "\n"



quux = proc {
  print "QUUXQUUXQUUX!!!\n"
}

quux.call

require('../TEST/class')
print $line1


#const_class = ConstClass.new

#print  const_class.show
print 'MODULE', $/
print ConstClass::C1, "\n"
print ConstClass::C2, "\n"
print ConstClass::C3, "\n"


# чтобы не вызывать каждый раз через :: пишут - include ConstModule
include ConstModule
print "#{$line2}"
print C2, "\n"
print  showConstants


class Fruit
  def kind=(k)
    @kind = k
  end
  def kind
    @kind
  end

  attr_accessor :condition
  def inspect
    "2) a fruit of the " + @kind + " variety \n"
  end
end

f2 = Fruit.new # инициализируем обьект

f2.kind = 'banana'
print '1) Tadam!!! ' + f2.kind + "\n"


f2.condition = 'RIPE'
p f2.inspect
p f2.condition
