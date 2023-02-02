# frozen_string_literal: true

CORRECT_KEYS = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./"

def keyboard_mistake_fix(input) = input.chars.map do |letter|
  letter == ' ' ? letter : CORRECT_KEYS[CORRECT_KEYS.index(letter) - 1]
end.join

if __FILE__ == $0
  print 'Type the string using WERTYU: '
  input = gets.chomp

  puts "Translated text: #{keyboard_mistake_fix(input)}"
end
