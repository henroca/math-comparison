module Math
  module Comparison
    module Exceptions
      # Error to failed commands
      class CommandError < StandardError
        def initialize(msg = 'The command failed')
          super
        end
      end
    end
  end
end
