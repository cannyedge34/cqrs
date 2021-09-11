require_relative './command'

class CreateVideoCommand < Command
  def initialize(id, title, url, course_id)
    super()
    @id = id
    @title = title
    @url = url
    @course_id = course_id
  end

  private

  attr_reader :id, :title, :url, :course_id
end
