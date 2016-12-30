# https://projecteuler.net/problem=2

# simple version
def even_fib(max)
  sum = 0
  a = b = 1
  
  while b < max
    a, b = b, a + b
    sum += b if b.even?
  end
  
  sum
end

even_fib(4_000_000) # => 4613732

# fancy Ruby-isq version
even_fib = Enumerator.new do |y|
  a = b = 1
  loop do
    a, b = b, a + b
    y.yield b if b.even?
  end
end

puts even_fib.take_while { |i| i < 4_000_000 }.inject(:+) 
