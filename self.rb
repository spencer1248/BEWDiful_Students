puts self

class Foo
  puts self

 def bar
  puts self
 end

end

foo = Foo.new
foo.bar