# frozen_string_literal: true

total = 0
count = 0
File.readlines('save.txt').each do |line|
  price = line.split("\s")[2]
  total += price.to_i
  count += 1
end
puts "Count:\s#{count}\n"
puts "total:\s#{total}\n"

new_avg = total / count.round(4)

# adds comma to the numbers.
puts "AVG:\s#{new_avg.to_s.gsub(/\B(?=(...)*\b)/, ',')}"
