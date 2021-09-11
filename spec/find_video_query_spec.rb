require 'find_video_query'

describe 'find_video_query' do # rubocop:disable RSpec/DescribeClass
  let(:id) { '1' }

  let(:find_video_query) { FindVideoQuery.new(id) }

  it 'prints an instance of command class with' do
    expect(find_video_query).to be_a_kind_of(FindVideoQuery)
    expect(find_video_query.id).to eq('1')
  end
end
