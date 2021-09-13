require 'query'

describe 'query' do # rubocop:disable RSpec/DescribeClass
  let(:query_klass) { Query }
  let(:query) { query_klass.new }

  it 'returns new instance of query class' do
    expect(query).to be_a_kind_of(query_klass)
    expect(query.frozen?).to be(true)
  end
end
