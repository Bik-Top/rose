# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#for i in [0..5]
#  console.log "Hello #{i}"

#gcd = (a, b) -> if (b == 0) then a else gcd(b, a % b)

###square = (x) -> x * x

sum = (nums) -> nums.reduce (a, b) -> a + b

diff = (nums) -> (square sum nums) - (sum nums.map square)

diff [1..100]###


#Animal
class Animal
  constructor:(name)->
    @name = name
    @kind = kind

  toString:()->
    "My name is #{@name}"
    "LLLLLSLD  #{@kind}"

#Use
animal = new Animal "First Animal"
console.log animal.toString()

########
#Animal
class Animal
  constructor:(@name="???")->

  toString:()->
    "My name is #{@name}"

#Use
animal = new Animal "First Animal"
anOtherAnimal = new Animal

console.log animal.toString()
console.log anOtherAnimal.toString()