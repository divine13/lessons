def years_old(age)
  case age
  when String
    puts "Invalid age!"
  when 0...13
    puts "You are a child."
  when 13...20
    puts "You are a teenager."
  when 20, 22
    puts "You are 20 or 22."
  when 21
    puts "Party!"
  else
    puts "You are old."
  end
end
