def findNemo(phrase)
  index = phrase.split.find_index('Nemo')

  return "I found Nemo at #{index + 1}!" if index

  "I can't find Nemo :("
end

if __FILE__ == $0
  print 'Enter a phrase: '
  phrase = gets.chomp
  puts "Result: #{findNemo(phrase)}"
end
