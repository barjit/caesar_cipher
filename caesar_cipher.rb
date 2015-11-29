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

#iterate through each character, if it is a number check the ascii range it is in and subtract 26 if it is not a letter anymore.
  loop_back = shifted.map do |z|
    if z.is_a? Integer
      if (90..96) === z
        z - 26
      elsif (z > 122)
        z - 26
      else
        z
      end
    else
      z
    end
  end   


#iterate through each (now modified) ascii number and convert it back to a string character:
  convert = loop_back.map do |y|
    if y.is_a? Integer
      y.chr
    else
      y
    end
  end

#join array of string characters to make the new word:
  result = convert.join("")
end