require 'benchmark'

def num
  num = 35
end

# def recursive_fib(num)
#   if num == 0
#     return 0
#
#   elsif  num == 1
#     return 1
#   end
#
#   if num >= 2
#     return recursive_fib(num-1) + (recursive_fib(num-2))
#   end
# end

# puts recursive_fib(num)


def iterative_fib(num)
  a = 0
  b = 1

  num.to_i.times do
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


Benchmark.bm do |x|
  # x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
