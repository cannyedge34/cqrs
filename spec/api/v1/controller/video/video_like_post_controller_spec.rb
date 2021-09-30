require 'spec_helper'

describe Api::V1::Controller::Video::VideoLikePostController do
  include Rack::Test::Methods

  def app
    OUTER_APP
  end

  let(:url) { BASE_URL }

  # We need to define a set of correct attributes to create the command in the controller
  let(:attributes) do
    {
      video_like_id: '1',
      video_id: '2',
      user_id: '24'
    }
  end

  let(:valid_params) do
    {
      data: {
        attributes: attributes
      }
    }
  end

  before do
    header 'Content-Type', 'application/vnd.api+json'
  end

  it 'returns HTTP status 201 - Created' do
    post '/api/v1/video_like', valid_params.to_json # rubocop:disable Rails/HttpPositionalArguments
    expect(last_response.status).to eq(201)
  end
end
