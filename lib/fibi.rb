# def iterative_fib(num)
#   return 0 if num == 0
#
#   x = 0
#   y = 1
#
#   (1..num).each do
#     z = (x + y)
#     x = y
#     y = z
#   end
#
#   puts y
# end
#
# (0..2).map { |num| iterative_fib(num) }
# def num
#   num = 0
#   return x = 0 if num == 0
#   puts x
# end
#
def num
  num = 35
end

def iterative_fib(num)
  a = 0
  b = 1

  num.times do
    temp = a
    a = b
    # Add up previous two numbers in sequence
    b = temp + b
  end

  return b
end

num.times do |num|
  result = iterative_fib(num)
  puts result
end
