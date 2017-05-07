card_number = "6011797668867828"

individual = card_number.reverse.split(//)
sum = 0
index = 0
doubled = []
double_individual = []

individual.each do |i|
 if index.even?
   sum = (i.to_i) + sum
   index += 1
 else index.odd?
   double << i.to_i
   index += 1
 end
end

double.each do |i|
  if (i * 2) < 10
    sum = (i * 2) + sum
  else
    doubled << (i * 2).to_s.split(//)
  end
end

doubled.flatten.each do |i|
  sum = (i.to_i) + sum
end

valid = false
if sum % 10 == 0
  valid = true
else
  valid = false
end

if valid == true
  puts "The number is valid."
else
  puts "The number is invalid."
end
