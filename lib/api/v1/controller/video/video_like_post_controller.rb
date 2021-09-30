module Api
  module V1
    module Controller
      module Video
        class VideoLikePostController < Grape::API
          version 'v1', using: :path, vendor: 'cqrs-exercise'

          helpers do
            def create_video_like_command(params)
              Src::Video::Application::Like::CreateVideoLikeCommand.new(
                video_like_id: params[:data][:attributes][:video_like_id],
                video_id: params[:data][:attributes][:video_id],
                user_id: params[:data][:attributes][:user_id]
              )
            end
          end

          resources :video_like do
            desc 'Create a a video like.'

            params do
              requires :data, type: Hash do
                requires :attributes, type: Hash do
                  requires :video_like_id, type: String
                  requires :video_id, type: String
                  requires :user_id, type: String
                end
              end
            end

            post do
              # 1. Creating the command with received params
              video_like_command = create_video_like_command(params)

              # 2. Dispatching the command
              bus_dispatch(video_like_command)

              status :created
            end
          end
        end
      end
    end
  end
end
