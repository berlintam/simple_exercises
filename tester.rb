def assert(expected, actual)
  if expected != actual
    raise "Expected #{actual} to equal #{expected}, but they aren't equal!"
  else
    puts "PASSED! #{expected} is equal to #{actual}"
  end
end
