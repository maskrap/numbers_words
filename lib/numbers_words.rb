
class Fixnum
  one_to_nineteen = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

  two_digits = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety",}

  define_method(:translate) do
    if (self.>(0)) && (self.<(20))
      word_small =
      word_small = one_to_nineteen.fetch(self)
      word_small
    elsif (self.>=(20)) && (self.<(100))
      word_medium =
      number_array = (self.to_s).split("")
      single_num = number_array.pop().to_i
      tens_num = number_array.pop().to_i
      word_small = one_to_nineteen.fetch(single_num)
      word_med = two_digits.fetch(tens_num)
      number_word = word_med.concat(word_small)

    end
  end
end



# one_to_nineteen = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17, "eighteen" => 18, "nineteen" => 19}
