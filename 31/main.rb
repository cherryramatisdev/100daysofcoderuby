# frozen_string_literal: true

# Time...
class Time
  HUMANIZED_NUMBERS = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven',
                       'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'half'].freeze

  def self.humanize(hour, minutes)
    humanized_hour = ''
    minute_suffix = minutes == 1 ? ' minute' : ' minutes'

    if hour == 12 && minutes.zero?
      humanized_hour += ' noon'
      return humanized_hour
    end

    if HUMANIZED_NUMBERS[hour]
      humanized_hour += "#{HUMANIZED_NUMBERS[hour]} o' clock" if minutes.zero?

      if minutes.positive? && minutes <= 20
        if minutes == 15
          humanized_hour += "quarter past #{HUMANIZED_NUMBERS[hour]}"
          return humanized_hour
        end

        humanized_hour += "#{HUMANIZED_NUMBERS[minutes]}#{minute_suffix} past #{HUMANIZED_NUMBERS[hour]}"
      end

      vh = hour == 11 ? 'noon' : HUMANIZED_NUMBERS[hour + 1]

      if minutes > 20 && minutes < 30
        humanized_hour += "#{HUMANIZED_NUMBERS[20]} #{HUMANIZED_NUMBERS[minutes - 20]} #{minute_suffix} past #{vh}"
      end

      humanized_hour += "half past #{HUMANIZED_NUMBERS[hour]}" if minutes == 30

      if minutes > 30 && minutes <= 40
        humanized_hour += "#{HUMANIZED_NUMBERS[20]} #{HUMANIZED_NUMBERS[40 - minutes]}#{minute_suffix} to #{vh}"
      end

      if minutes > 40 && minutes < 60
        if minutes == 45
          humanized_hour += "quarter to #{vh}"
          return humanized_hour
        end

        humanized_hour += "#{HUMANIZED_NUMBERS[60 - minutes]}#{minute_suffix} to #{vh}"
      end
    end

    humanized_hour
  end
end

if __FILE__ == $0
  print 'Enter an hour: '
  hour = gets.chomp.to_i
  print 'Enter an minute: '
  minute = gets.chomp.to_i

  puts "The time in human language is: #{Time.humanize(hour, minute)}"
end
