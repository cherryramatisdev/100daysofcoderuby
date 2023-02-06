# frozen_string_literal: true

def breaking_records(scores)
  records = [[scores.first], [scores.first]]

  scores.each do |value|
    records.first.push(value) if value > records.first[records.first.length - 1]

    records[1].push(value) if value < records[1][records[1].length - 1]
  end

  [records.first.length - 1, records[1].length - 1]
end

if __FILE__ == $0
  print 'Enter the score for each round separate by whitespace: '
  scores = gets.chomp.split

  puts "Indexes where you break the record: #{breaking_records(scores)}"
end
