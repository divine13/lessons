def yield_names
  yield "Erik", "Michaels-Ober"
  yield "Maja", "Komel"
  yield "Nina", "Breznik"
end

print "Enter a greeting: "
greeting = gets.chomp

yield_names do |first, last|
  puts "#{greeting} #{first} #{last}"
end
