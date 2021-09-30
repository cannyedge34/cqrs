require 'grape'
require 'dry-struct'

module Types
  include Dry.Types()
end

# Load files from the models and api folders

Dir["#{File.dirname(__FILE__)}/**/*.rb"].each { |f| require f }

# Grape API class. We will inherit from it in our future controllers.
module Api
  module V1
    module Controller
      class ApplicationController < Grape::API
        prefix :api

        format :json
        formatter :json, ->(object, _env) { object.to_json }
        content_type :json, 'application/vnd.api+json'

        helpers do
          def base_url
            "http://#{request.host}:#{request.port}/api/#{version}"
          end

          def invalid_media_type!
            error!('Unsupported media type', 415)
          end

          def json_api?
            request.content_type == 'application/vnd.api+json'
          end

          def bus_dispatch(command)
            command_bus.dispatch(command)
          end

          def command_bus
            @command_bus ||= Src::Shared::Domain::Bus::Command::CommandBus.new
          end
        end

        before do
          invalid_media_type! unless json_api?
        end

        # Simple endpoint to get the current status of our API.
        get :status do
          { status: 'ok' }
        end

        mount V1::Controller::Video::VideoLikePostController
      end
    end
  end
end

# Mounting the Grape application
CqrsExercise = Rack::Builder.new do
  map '/' do
    run Api::V1::Controller::ApplicationController
  end
end
