$line1 = "\n===================================== \n"
$line2 = "\n_____________________________________ \n"


print "tests syntax's RUBY #{$line1} \n"

#создание класса Dog с методом  voice
class Dog
  <<-DOC
    Здесь записан простой текст.
  DOC
  # -> 'Здесь записан простой текст'
   def voice
     print "Bow WOW\n \n"
   end
end
#dog новый объект класса Dog
dog = Dog.new
dog.voice

 #наследование Cat<Dog переопределение метода voice
class Cat<Dog
  def voice
    print "MEU Mrrr \n"
  end
  def identifi
    p "I`m Cat! "; self.voice

  end
end
 #вызов
cat = Cat.new
cat.voice
cat.identifi


class Test
  def times_two(a)
    print a, " times two is ", engine(a), "\n"
  end

  def engine(b)
    b*2
  end

  private :engine # this hides engine from users
end
test = Test.new
# test.engine(6)
test.times_two(6)

class Bird<Dog
  def voice
    print "  ЧИРИК-ЧИРИК \n"
  end
  def  ability
    print "  ЛЕТАТЬ УМЕЮТ !!! "
  end
  private :ability
  def walk
    print ability
  end
end

bird = Bird.new
bird.voice
bird::walk

  print "#{$line1}"

#создание класса Human с методом  identify, train_toll
class Human
  # @return [Object]
  def identify
    print "Вызываеться обьект Human\n"
  end

  # @return [Object]
  # @param [Object] age
  def train_toll(age)
    if age < 18
      print "Reduced fare. >18 NO  #{$line2}";
    else
      print "Normal fare. <18 OK  #{$line2}";
    end
  end
end

class Student<Human
  # @return [Object]
  def identify
    print "I'm a Student.\n"
  end
end

human = Human.new
human.identify
human.train_toll(22)

student = Student.new
student.identify
# student.train_toll(17)


# расширяем класс STUDENT с помощью SUPER
class Ivan<Human
  def identify
    print "    I`m is super Ivan\n"
    super
    print "       SUPER Ho Ho HOo! I`m Santa\n"
    super
    print "       new_method 1 \n"
    super
    print "       new_method 2  #{$line2}"
  end
end

ivan = Ivan.new
ivan.identify


class Test

  def times_two(a)
    print a, " times two is ", engine(a), "\n"
  end

  def engine(b)
    b*2
  end

  private :engine # this hides engine from users
end

test = Test.new
#test.engine(6)
test.times_two(6)






# @param [ConstClass]
class ConstClass
  C1=101
  C2=102
  C3=103

  # @return [show]  C1, C2, C3
  def show
    print 'Output show: ',C1, " ", C2, " ", C3, "\n"
  end
  #private show
end

# @param [module]
module ConstModule
  C1='101'
  C2=102
  C3=103

  def showConstants
    print 'Output showConstants: ', C1, " ", C2, " ", C3, "\n"
  end
end