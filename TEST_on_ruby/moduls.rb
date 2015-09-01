=begin

������ � Ruby ���������� �������, �� �����������:
- ������ �� ����� ����� ��������������.
- ������ �� ����� ����� ����������.
- ������ ������������ ������������ module ... end.

=end

# ������ Math � ����������� ���������� Ruby
print Math::PI, $/
#���� �� ����� ����� ��������� �� ������ ��� ��������� ������ ��� ������������� ::, �� ����� �������� (include) ������ ������
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


# ����� �� �������� ������ ��� ����� :: ����� - include ConstModule
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

f2 = Fruit.new # �������������� ������

f2.kind = 'banana'
print '1) Tadam!!! ' + f2.kind + "\n"


f2.condition = 'RIPE'
p f2.inspect
p f2.condition
