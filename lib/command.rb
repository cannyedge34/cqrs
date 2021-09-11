require 'securerandom'

class Command
  def initialize
    @command_id = SecureRandom.uuid
  end
end
