# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

class PeakClassifier
  extend T::Sig

  # A mountain is an array with exactly one peak.

  # All numbers to the left of the peak are increasing.
  # All numbers to the right of the peak are decreasing.
  # The peak CANNOT be on the boundary.

  # A valley is an array with exactly one trough.

  # All numbers to the left of the trough are decreasing.
  # All numbers to the right of the trough are increasing.
  # The trough CANNOT be on the boundary.
  sig { params(levels: T::Array[Integer]).returns(String) }
  def landscape_type(levels)
    return "mountain" if mountain?(levels)
    return "valley" if valley?(levels)

    return "neither"
  end

  private

  sig { params(levels: T::Array[Integer]).returns(T::Boolean) }
  def mountain?(levels)
    going_up = T.let(true, T::Boolean)
    climbing = T.let(false, T::Boolean)
    result = T.let(true, T::Boolean)

    previous = levels[0]

    for i in 1...levels.length
      if going_up && T.must(previous) > T.must(levels[i]) && climbing
        going_up = false
      elsif !going_up && T.must(previous) < T.must(levels[i]) || !climbing && T.must(previous) > T.must(levels[i])
        result = false
        break
      end
      previous = levels[i]
      climbing = true
    end
    result && !going_up
  end

  sig { params(levels: T::Array[Integer]).returns(T::Boolean) }
  def valley?(levels)
    going_up = T.let(false, T::Boolean)
    climbing = T.let(false, T::Boolean)
    result = T.let(true, T::Boolean)

    previous = levels[0]
    for i in 1...levels.length
      if !going_up && T.must(previous) < T.must(levels[i]) && climbing
        going_up = true
      elsif going_up && T.must(previous) > T.must(levels[i]) || !climbing && T.must(previous) < T.must(levels[i])
        result = false
        break
      end
      previous = levels[i]
      climbing = true
    end
    result && going_up
  end
end

if __FILE__ == $0
  peak_classifier = PeakClassifier.new

  print "Enter a list of numbers separated by spaces: "
  levels = gets.chomp.split(" ").map(&:to_i)

  puts "The landscape type is #{peak_classifier.landscape_type(levels)}"
end
