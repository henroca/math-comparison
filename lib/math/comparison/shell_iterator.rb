require 'open3'

module Math
  module Comparison
    # Run shell commands
    class ShellIterator
      attr_accessor :command, :params, :result

      def initialize(command, *params)
        self.command = command
        self.params = params
      end

      def exec
        stdout, status = Open3.capture2e(command, *params)

        raise Exceptions::CommandError, error_message unless status.success?

        @result = stdout.strip
      rescue Errno::ENOENT
        raise Exceptions::CommandError, error_message
      end

      def self.exec(command, *params)
        instance = new(command, *params)
        instance.exec
        instance
      end

      private

      def prepare_command
        command_to_exec = command

        params.each { |param| command_to_exec += " #{param} " }

        command_to_exec.strip
      end

      def error_message
        "The command #{prepare_command} is failed"
      end
    end
  end
end
