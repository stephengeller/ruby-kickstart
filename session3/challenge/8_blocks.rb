# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person
  attr_accessor :name, :age, :quote                         # Provide getter / sett for name, age and quote

  def initialize(options=Hash.new, &initializer)            # Unlimited options (in hash) to be set, and initializer
    self.name    = options[:name]                           # Name, age and quote set by ':option =>'
    self.age     = options[:age]
    self.quote   = options[:quote]
    @initializer = (initializer || Proc.new {|person|})     # Allows for block to passed in, to set the age and quote?
    reinit
  end

  def reinit                                                # Calls the block with the parameters in it, which creates the full class
    @initializer.call self
  end
end


artist = Person.new :name => 'Prince' do |person|
  person.age   = 47
  person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
end

puts artist.name

# puts artist.name   # => "Prince"
# puts artist.age    # => 47
#
# puts artist.name = 'The Artist Formerly Known As Prince'
# puts artist.age  = 1999
#
# puts artist.name   # => "The Artist Formarly Known As Prince"
# puts artist.age    # => 1999
#
# puts artist.reinit
#
# puts artist.name   # => "The Artist Formarly Known As Prince"
# puts artist.age    # => 47
