class VideoLikeCreator
  def initialize(repository:, publisher:)
    @repository = repository
    @publisher = publisher
  end

  # this is the service/use_case

  def create(id, video_id, user_id)
    # Aggregatte video like
    video_like = Video.like(id, video_id, user_id)

    # repository to persist in db
    repository.save(video_like)

    # publisher
    publisher.publish(video_like.publish_domain_events)
  end

  attr_reader :repository, :publisher
end
