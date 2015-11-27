def caesar_cipher(string, shift)
  #split the string parameter into array of characters:
  split_string = string.chars

  #iterate through each character and convert it to it's ascii number:
  ascii = split_string.map {|ch| ch.ord}

  #iterate through each ascii number and add the shift parameter to it:
  shifted = ascii.map {|ascii| ascii + shift}
  
  #iterate through each (now modified) ascii number and convert it back to a string character:
  convert = shifted.map {|num| num.chr}
  
  #join array of string characters to make the new word:
  result = convert.join("")
  
  #puts the new word:
  puts "#{result}"
end