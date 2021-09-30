module Src
  module Video
    module Application
      module Like
        class CreateVideoLikeCommand < Src::Shared::Domain::Bus::Command::CommandBase
          attribute :video_like_id, Types::String
          attribute :video_id, Types::String
          attribute :user_id, Types::String
        end
      end
    end
  end
end
