def caesar_cipher(string, shift)
  result = []

  split_string = string.split("")
  split_string.each do |character|
    hex = character.ord
    if (97..122).include? hex
      shifted = hex + shift
      if shifted > 122
        rotate = (shifted - 122) + 96
        result << rotate.chr
      else
        result << shifted.chr
      end
    elsif (65..90).include? hex
      shifted = hex + shift
      if shifted > 90
        rotate = (shifted - 90) + 64
        result << rotate.chr
      else
        result << shifted.chr
      end
    else
      result << hex.chr
    end
  end
  result.join
        
end