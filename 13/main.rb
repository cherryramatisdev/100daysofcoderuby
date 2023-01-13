# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

module Bag
  extend T::Sig

  sig { params(groceries: T::Array[Integer], bags: Integer).returns(T::Boolean) }
  def self.fit?(groceries, bags)
    groceries.sum <= bags * 10
  end
end

if __FILE__ == $0
  print 'Enter the number of bags: '
  bags = gets.chomp.to_i
  print 'Enter the weight of each grocery item separated by space: '
  groceries = gets.chomp.split(' ').map(&:to_i)

  puts "The bags you're carring fit the groceries? #{Bag::fit?(groceries, bags) ? 'yes' : 'no'}"
end
