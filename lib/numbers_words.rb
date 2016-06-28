require('pry')

class Fixnum
  one_to_nineteen = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

  two_digits = { 0 => "", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety",}

# ARRAY OF NUMBERS AS STRINGS
number_array = []

  define_method(:one) do |input|
    number_array = (input.to_s()).split("")
    single_num = number_array.pop()
    single_num = (single_num.to_i())
    word_tiny = one_to_nineteen.fetch(single_num)
    word_tiny
  end

  define_method(:ten) do |input_ten|
    if (input_ten.length() == 1)
    tens_num = (input_ten).join().to_i()
    word_med = two_digits.fetch(tens_num)
  # binding.pry
    else
      tens_num = (input_ten.pop()).to_i()
      word_med = two_digits.fetch(tens_num)
      word_med
    end
  end

  define_method(:hundred) do |input_hundred|
    if (input_hundred.length() == 1)
      hundred_num = (input_hundred).join().to_i()
      word_large = one_to_nineteen.fetch(hundred_num)
      else
        tens_num = (input_ten.pop()).join().to_i()
        word_med = one_to_nineteen.fetch(tens_num)
        word_med
    end
  end

  define_method(:translate) do
    if (self.>=(0)) && (self.<(20))
      word_small =
      word_small = one_to_nineteen.fetch(self)
      word_small

    elsif (self.>=(20)) && (self.<(100))
      word_smallb = one(self)
      word_medb = ten(number_array)
      number_word = word_medb.concat(" " + word_smallb)
      number_word

    elsif (self.>=(100)) && (self.<(999))
      word_smallb = one(self)
      word_medb = ten(number_array)
      word_largeb = hundred(number_array)
      number_word = word_largeb.concat(" hundred" + word_medb + " " + word_smallb)
      number_word
    end
  end

end




# word_medium =
# number_array = (self.to_s).split("")
# single_num = number_array.pop().to_i
# tens_num = number_array.pop().to_i
# word_small = one_to_nineteen.fetch(single_num)
# word_med = two_digits.fetch(tens_num)
# number_word = word_med.concat("-" + word_small)

# one_to_nineteen = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17, "eighteen" => 18, "nineteen" => 19}
