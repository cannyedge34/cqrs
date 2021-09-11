require_relative './query'

class FindVideoQuery < Query
  def initialize(id)
    super()
    @id = id
  end

  attr_reader :id
end
