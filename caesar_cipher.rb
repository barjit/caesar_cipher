puts "enter input"
input = gets.chomp

split_input = input.chars
ascii = split_input.map {|ch| ch.ord}

puts "enter your shift"
shift = gets.chomp.to_i 

shifted = ascii.map {|asc| asc + shift}
convert = shifted.map {|num| num.chr}
result = convert.join("")
puts "Your encrypted string: #{result}"