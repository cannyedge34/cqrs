module Src
  module Video
    module Application
      module Like
        class CreateVideoLikeCommandHandler
          def initialize(creator:)
            @creator = creator
          end

          def call(create_video_like_command)
            # this command handler convert primitive into value objects
            id = VideoLikeId.new(create_video_like_command.video_like_id)
            video_id = VideoId.new(create_video_like_command.video_id)
            user_id = UserId.new(create_video_like_command.user_id)

            creator.create(id, video_id, user_id)
          end

          private

          attr_reader :creator
        end
      end
    end
  end
end
