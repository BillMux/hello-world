birth_year = 1992
birth_month = 2
birth_date = 4


todays_year = 2018
todays_month = 7
todays_date = 26

age_in_years = (todays_year - birth_year)

if birth_month > todays_month
  age_in_years -= 1
elsif birth_month == todays_month
  if birth_date > todays_date
    age_in_years -= 1
  end
end

age_in_days = (365 * age_in_years) + birth_date

birth_year.upto(todays_year) { |x| 
  if x % 4 == 0
    age_in_days += 1
  end
  }


if birth_month > 1
  age_in_days += 31
end

if birth_month > 2
  age_in_days += 28
end

if birth_month > 3
  age_in_days += 31
end  
  
if birth_month > 4
  age_in_days += 30
end

if birth_month > 5
  age_in_days += 31
end

if birth_month > 6
  age_in_days += 30
end

if birth_month > 7
  age_in_days += 31
end

if birth_month > 8
  age_in_days += 31
end

if birth_month > 9
  age_in_days += 30
end

if birth_month > 10
  age_in_days += 31
end

if birth_month > 11
  age_in_days += 30
end

puts age_in_days
puts age_in_years
