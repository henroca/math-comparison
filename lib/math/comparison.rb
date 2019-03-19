require 'math/comparison/enums/comparison'
require 'math/comparison/version'
require 'math/comparison/exceptions/command_error'
require 'math/comparison/exceptions/mathematical_syntax_error'
require 'math/comparison/shell_iterator'
require 'math/comparison/python_inteface'
require 'math/comparison/python_inteface'
require 'math/comparison/comparator'

module Math
  # Module comparison
  module Comparison
    def self.eql?(first_value, second_value)
      comparator = Comparator.new(first_value, second_value)
      comparator.set_type
      comparator.equal?
    end
  end
end
