#!/usr/bin/ruby -w

# define a class
class Box

  #Class Constansts
  BOX_COMPANY = "Acme"
  BOXWEIGHT = 10



  # Static Variable
  @@count = 0

  # constructor method
  def initialize(w,h)
    @width, @height = w, h
    @@count += 1
  end

  # accessor methods
  def getWidth
    @width
  end
  def getHeight
    @height
  end

  # setter methods
  def setWidth=(value)
    @width = value
  end
  def setHeight=(value)
    @height = value
  end

  def getArea
    @width * @height
  end

  # Static method
  def self.printCount()
    puts "Box count is : #@@count"
  end

  def aPublicMethod
     aPrivateMethod
  end


  def aPrivateMethod
    puts "I´m a private method"
  end
  private :aPrivateMethod

  def aProtectedMethod
    puts "I´m a protected method"
  end
  protected :aProtectedMethod


  # define to_s method
  def to_s
    "(w:#@width,h:#@height)"  # string formatting of the object.
  end

end

class SmallBox < Box
  def aPublicMethod
    aProtectedMethod
  end

end


# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth
y = box.getHeight

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"


a = box.getArea()
puts "Area of the box is : #{a}"

otherBox = Box.new 10,20

Box.printCount()

# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"

puts box.aPublicMethod

b = SmallBox.new(10,10)
b.aPublicMethod


puts "Box weight is: #{Box::BOXWEIGHT}"