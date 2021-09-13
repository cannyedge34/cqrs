require_relative './query'

class FindVideoQuery < Query
  attribute :id, Types::Integer
end
