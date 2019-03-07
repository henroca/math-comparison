module Math
  module Comparison
    # This is a interface to exec python files
    class PythonInteface
      attr_accessor :command, :shell_iterator, :python_file

      def initialize
        self.command = 'python3'.freeze
      end

      def self.exec(python_file, *params)
        instance = new
        instance.python_file = python_file
        instance.exec(params)

        instance.result
      end

      def exec(params = [])
        return if python_file.nil?

        command_params = [python_file]
        command_params.concat params

        self.shell_iterator = ShellIterator.exec(command, *command_params)
      end

      def result
        shell_iterator && shell_iterator.result
      end
    end
  end
end
