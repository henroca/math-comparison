module Math
    module Comparison
        class ShellIterator
            attr_accessor :command, :params, :result

            def initialize(command, *params)
                self.command= command
                self.params= params
            end

            def prepare_command
                command_to_exec = command

                params.each {|param| command_to_exec = command_to_exec + " #{param} " }

                command_to_exec.strip
            end

            def exec
                self.result= %x[ #{self.prepare_command} ].strip
            end

            def self.exec(command, *params)
                instance = new(command, *params)
                instance.exec
                instance
            end
        end
    end
end
  