module Luhn

  def self.is_valid?(number) 
    digits = number.to_s
    digits_array = digits.split('')
    digits_reversed = digits_array.reverse
    newlistdigits = []
    digits_reversed.each_with_index do |n, index|
      n = n.to_i
      if (index % 2) != 0
        doubled = (n*2)
        if doubled >= 10
          doubled = doubled - 9
        end
        newlistdigits.push (doubled)  
      else
        newlistdigits.push (n)
      end
    end
    total = 0
    newlistdigits.each do |x|
      total = total + x
    end 

    if (total % 10) == 0
      returnvalue = true
    else
      returnvalue = false
    end 
    return returnvalue
  end
end
Luhn.is_valid?(4194560385008505)
puts "I ran this line"