# 12. Write a function that computes the first 100 Fibonacci numbers

def fibo(n)
  if n <= 1
    1
  else
    fibo(n-1) + fibo(n-2)
  end
end

# This is super slow!!!

(0..100).each do |num|
  puts fibo num
end