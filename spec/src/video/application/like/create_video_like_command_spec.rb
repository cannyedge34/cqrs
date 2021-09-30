describe Src::Video::Application::Like::CreateVideoLikeCommand do
  let(:video_like_id) { '1' }
  let(:video_id)      { '2' }
  let(:user_id)       { '24' }

  let(:create_video_command) do
    described_class.new(video_like_id: video_like_id, video_id: video_id, user_id: user_id)
  end

  it 'prints an instance of command class with' do
    expect(create_video_command).to be_a_kind_of(described_class)
    expect(create_video_command.video_like_id).to eq('1')
    expect(create_video_command.video_id).to eq('2')
    expect(create_video_command.user_id).to eq('24')
  end
end
