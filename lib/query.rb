require 'dry-struct'

module Types
  include Dry.Types()
end

class Query < Dry::Struct::Value; end
