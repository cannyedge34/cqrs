require 'create_video_command'

describe 'create_video_command' do # rubocop:disable RSpec/DescribeClass
  let(:id)        { '1' }
  let(:title)     { 'new title' }
  let(:url)       { 'http:://google.com' }
  let(:course_id) { '5425' }

  let(:create_video_command) { CreateVideoCommand.new(id, title, url, course_id) }

  it 'prints an instance of command class with' do
    expect(create_video_command).to be_a_kind_of(CreateVideoCommand)
    expect(create_video_command.send(:id)).to eq('1')
    expect(create_video_command.send(:title)).to eq('new title')
    expect(create_video_command.send(:url)).to eq('http:://google.com')
    expect(create_video_command.send(:course_id)).to eq('5425')
  end
end
