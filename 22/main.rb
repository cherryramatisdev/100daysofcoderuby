# frozen_string_literal: true
# typed: true

# Field...
class Field
  OFICIAL_FOOTBAL_FIELD_SIZE = 7140

  # @param [Float] deforestation_area
  # @return [Float]
  def calculate(deforestation_area)
    (deforestation_area / OFICIAL_FOOTBAL_FIELD_SIZE).round(3)
  end
end

if __FILE__ == $PROGRAM_NAME
  field = Field.new
  print 'Enter the deforestation area(in m2): '
  deforestation_area = gets.chomp.to_f

  puts "Football fields deforested: #{field.calculate(deforestation_area)}"
end
