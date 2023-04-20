
# Make a array by taking 10 input from user. Now delete all repeated elements of the array in ruby

arr = []
i = 1
while i<=10 do
  puts "Enter the value"
  value = gets.chomp.to_i
  arr.push(value)
  i=i+1
end    

puts "array_with_same_value: #{arr}"
puts "array_with_different_value : #{arr.uniq}"






