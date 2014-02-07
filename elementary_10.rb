# Write a program that prints the next 20 leap years

def i_am_a_leap_year(year)
  if year % 400 == 0
    @leap_year = true
  elsif year % 100 == 0
    @leap_year = false
  elsif year % 4 == 0
    @leap_year = true
  else
    @leap_year = false
  end
end

next_20_leap_years = []
maybe_leap_year = Time.now.year

until next_20_leap_years.count == 20
  i_am_a_leap_year(maybe_leap_year += 1 )
  if @leap_year == true
    next_20_leap_years.push(maybe_leap_year)
  end
end

puts next_20_leap_years