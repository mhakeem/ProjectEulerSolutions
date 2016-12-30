# https://projecteuler.net/problem=1

multiple_of_3_or_5 = -> (i) { i if i%3==0 || i%5==0 }
puts 1000.times.select(&multiple_of_3_or_5)
               .inject(:+)

# common version (non-functional)
total = 0
puts 1000.times { |i| total += i if i%3==0 || i%5==0 }
