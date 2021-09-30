module Src
  module Shared
    module Domain
      module Bus
        module Command
          class CommandBus
            def initialize
              # @bus = CommandBus.new
            end

            def dispatch(command)
              # command bus logic
              # command bus use the command_handler to create the use case
            end

            # attr_reader :bus
          end
        end
      end
    end
  end
end
