require 'pry'
# Add your code here
class Dog 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
 def self.all
  return @@all
 end
 def self.clear_all
   @@all.clear
 end

def self.print_all
    @@all.each do |dog|
     puts"#{dog.name}"
   end
 end
 
 def self.save
     @@all << self
 end
end
puppy = Dog.new('puppy')
binding.pry
Dog.all
