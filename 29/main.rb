# frozen_string_literal: true

def traffic_lights(sequence)
  arr = sequence.split(/[^A-Za-z]+/)

  return 'ERROR!' if arr.length < 4 || arr.length >= 10
  return 'REJECT!' if arr.first != 'R' || arr[-1] != 'R'

  arr.each_with_index do |value, index|
    if value == 'R'
      return 'ACCEPT!' if index + 1 == arr.length
      next if arr[index + 1] == 'G' || arr[index + 1] == 'C'
    end

    next if value == 'G' && (arr[index + 1] == 'Y' || arr[index + 1] == 'C')

    next if value == 'Y' && (arr[index + 1] == 'R')

    next unless value == 'C'
    next if arr[index + 1] == 'R'

    return 'REJECT!'
  end
end
