require 'securerandom'

module Src
  module Shared
    module Domain
      module Bus
        module Command
          class CommandBase < Dry::Struct::Value
            attribute :command_id, Types::String.default(SecureRandom.uuid)
          end
        end
      end
    end
  end
end
