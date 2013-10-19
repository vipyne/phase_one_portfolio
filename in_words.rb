
  # . create 2d arrays of numbers and their words by decimal place
  # . case based on length of num

def in_words(num)
  ones = [[],[1, "one"], [2, "two"], [3, "three"], [4, "four"], [5, "five"], 
  [6, "six"], [7, "seven"], [8, "eight"], [9, "nine"], [0, ""]]
  tens = [[],[1, ""], [2, "twenty "], [3, "thirty "], [4, "forty "], [5, "fifty "], 
  [6, "sixty "], [7, "seventy "], [8, "eighty "], [9, "ninety "], [0, ""]]
  if num == 10
    "ten"
  elsif num == 11
    "eleven"
  elsif num == 12
    "twelve"
  elsif num == 13
    "thirteen"
  elsif num == 14
    "fourteen"
  elsif num == 15
    "fifteen"
  elsif num == 16
    "sixteen"
  elsif num == 17
    "seventeen"
  elsif num == 18
    "eighteen"
  elsif num == 19
    "nineteen"
  else
    ones_place = num.to_s[-1]
    ones_place = ones[ones_place.to_i][1] 
    tens_place = num.to_s[-2]
    tens_place = tens[tens_place.to_i][1] 
    hundreds_place = num.to_s[-3]
    hundreds_place = ones[hundreds_place.to_i][1] 
    thousands_place = num.to_s[-4]
    thousands_place = ones[thousands_place.to_i][1] 
    if num.to_s.length == 1
      ones_place
    elsif num.to_s.length == 2
      tens_place + ones_place
    elsif num.to_s.length == 3
      hundreds_place + " hundred "+ tens_place + ones_place
    elsif num.to_s.length == 4
      thousands_place + " thousand " + hundreds_place + " hundred "+ tens_place + ones_place
    end
  end
end


p in_words(7) == "seven"
p in_words(18) == "eighteen"
p in_words(176) == "one hundred seventy six"
p in_words(2542) == "two thousand five hundred forty two"
