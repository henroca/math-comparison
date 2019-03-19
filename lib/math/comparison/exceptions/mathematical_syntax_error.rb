module Math
  module Comparison
    module Exceptions
      # Error to invalid mathematical syntax
      class MathematicalSyntaxError < StandardError
        def initialize
          super('invalid mathematical syntax')
        end
      end
    end
  end
end
