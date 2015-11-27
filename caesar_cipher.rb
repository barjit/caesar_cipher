def caesar_cipher(string, shift)

  alphabet = [*('a'..'z'), *('A'..'Z')]
  
#split the string parameter into array of characters:
  split_string = string.chars
  
#iterate through each character and convert it to it's ascii number if it is a letter:
  ascii = split_string.map do |ch|
    if alphabet.include?(ch)
      ch.ord
    else
      ch
    end
  end

#iterate through each ascii number and add the shift parameter to it if it is an integer:
  shifted = ascii.map do |x|
    if x.is_a? Integer
      x + shift
    else
      x
    end
  end
#iterate through each (now modified) ascii number and convert it back to a string character:
  convert = shifted.map do |y|
    if y.is_a? Integer
      y.chr
    else
      y
    end
  end

#join array of string characters to make the new word:
  result = convert.join("")

  puts "#{result}"

end