def recursive_fib(num)
  if num == 0
    return 0

  elsif  num == 1
    return 1
  end

  if num >= 2
    return recursive_fib(num-1) + (recursive_fib(num-2))
  end
end

puts recursive_fib(3)
