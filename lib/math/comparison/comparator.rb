module Math
  module Comparison
    # Comparator class
    class Comparator
      attr_accessor :first_value, :second_value, :type

      def initialize(first_value, second_value)
        self.first_value = first_value
        self.second_value = second_value
        @python_comparator = "#{__dir__}/python_comparator/app.py".freeze
      end

      def set_type
        self.type = Enums::Comparison::DEFAULT
        self.type = Enums::Comparison::EQUATION if equation?
      end

      def equal?
        exec_python == 'True'
      rescue Exceptions::CommandError
        raise Exceptions::MathematicalSyntaxError
      end

      def self.make(first_value, second_value)
        instance = new(first_value, second_value)
        instance.set_type
        instance
      end

      private

      def equation?
        first_value =~ /\=/
      end

      def exec_python
        PythonInteface.exec(
          @python_comparator,
          first_value,
          second_value,
          type
        )
      end
    end
  end
end
