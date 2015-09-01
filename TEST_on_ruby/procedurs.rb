def box
  contents = 15
  get = proc { contents }
  set = proc { |n| contents = n }
  return get, set
end

read1, writ1 = box

print  read1.call, $/
print  writ1.call(22), $/
print  read1.call, $/, $/

reader_1, writer_1 = box
print  reader_1.call, $/
print  writer_1.call(22), $/
print  reader_1.call, $/



class ConstClass
  C1=101
  C2=102
  C3=103

  def show
    print C1, " ", C2, " ", C3, "\n"
  end
end

const_class  = ConstClass.new
print  const_class.show, "\n"
print ConstClass::C1, "\n"


class Fruit

  attr_accessor :condition
     def inspect
         "a " + @condition + @kind
     end

  def set(k) # a writer
    @kind = k
  end

  def get # a reader
    @kind
  end

  def inspect
     "a fruit of the " + @kind + " variety"
  end
end

f1 = Fruit.new

f1.set("PEACH")

print f1.get, "\n"
print f1.inspect, "\n"

f2 = Fruit.new
f2.condition = "RIPE"

print f2.condition, "\n"


class Fruit2
  def initialize(k="apple" )
    @kind = k
    @condition = "BANANA"

  end
end

f4 = Fruit2.new "mango"

p f4
