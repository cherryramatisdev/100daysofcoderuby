# frozen_string_literal: true
#
# NOT DONE YET

# @param file_path String
# @return [String]
def gopher_escape_plan(file_path)
  data = File.read(File.expand_path(file_path, File.dirname(__FILE__))).split(/[^\d.]+/).map(&:to_f)
  return ['BAD FILE'] if data.length < 7

  gopher = [data[1], data[2]]
  dog = [data[3], data[4]]
  data = data[1..4]
  return ['BAD FILE'] if data.length.even?

  holes = []

  while data.length > 1
    holes.push(values[1], values[2])
    values.splice(1, 2)
  end

  (1..holes.length).each_index do |_index|
    gopher_position = gopher.inject(0) { |sum, value| value + sum }
    dog_position = dog.inject(0) { |sum, value| value + sum }
    hole_position = holes[0] + holes[1]

    gopher_position = (hole_position - gopher_position).abs
    dog_position = (hole_position - dog_position).abs
  end
  ['The gopher cannot escape the dog']
end
