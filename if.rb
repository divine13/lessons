def years_old(age)
  if age.is_a?(String)
    puts "Invalid age!"
  elsif age >= 0 && age < 13
    puts "You are a child."
  elsif age >= 13 && age < 20
    puts "You are a teenager."
  elsif age == 20 || age == 22
    puts "You are 20 or 22."
  elsif age == 21
    puts "Party!"
  else
    puts "You are old."
  end
end
