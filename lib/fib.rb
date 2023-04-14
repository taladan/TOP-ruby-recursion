# lib/fib.rb

# loop
def fibs(n)
  start = [0,1]
  while start.length < n
    start << start[-2] + start[-1]
  end
  return start
end

# recursive
def fibs_rec(n, fib=[0,1])
  return fib if fib.length == n
  fib << fib[-1] + fib [-2]
  fibs_rec(n ,fib)
end

puts fibs(8)
puts fibs_rec(8)