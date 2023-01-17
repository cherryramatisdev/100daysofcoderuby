# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

extend T::Sig

sig { params(cells: T::Array[Integer]).returns(Integer) }
def freed_prisoners(cells)
  return 0 if (cells[0] ||= 0).zero?

  unlock = 1
  count = 0

  cells.each do |cell|
    if cell == unlock
      count += 1
      unlock = toggle_lock(unlock)
    end
  end

  count
end

sig { params(unlock: Integer).returns(Integer) }
def toggle_lock(unlock)
  unlock == 1 ? 0 : 1
end

if __FILE__ == $PROGRAM_NAME
  print 'Enter a prison arragement separated by whitespace: '
  cells = gets.chomp.split.map(&:to_i)

  puts "You can free #{freed_prisoners(cells)} prisoners"
end
