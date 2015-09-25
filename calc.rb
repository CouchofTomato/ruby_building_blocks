=begin
def caesar_cipher(string, number)
  string.each_char do |letter|
    temp = letter.ord
    if (letter.ord >= 65 && letter.ord <= 90) || (letter.ord >=97 && letter.ord <= 122)
      number.abs.times do
        if number > 0
          temp += 1
        end
        if number < 0
          temp -= 1
        end
        if number < 0 && temp == 96
          temp = 122
        end
        if number < 0 && temp == 64
          temp = 90
        end
        if number > 0 && temp == 123
          temp = 97
        end
        if number > 0 && temp == 91
          temp = 65
        end
      end
      string.gsub!(letter, temp.chr)
    end
  end
  string
end

puts caesar_cipher("helo", 3)
=end

def caesar_cipher(string, number)
  string.each_char do |letter|
    temp = letter.ord
    number.abs.times do
      if number > 0
        temp += 1
      end
      if number < 0
        temp -= 1
      end
      if number < 0 && temp == 96
        temp = 122
      end
      if number < 0 && temp == 64
        temp = 90
      end
      if number > 0 && temp == 123
        temp = 97
      end
      if number > 0 && temp == 91
        temp = 65
      end
    end
    if letter.match(/[A-Za-z]/)
      string.gsub!(letter, temp.chr)
    end
  end
  string
end

puts caesar_cipher("hello ", 3)