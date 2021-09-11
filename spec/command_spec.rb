require 'command'

describe 'command' do # rubocop:disable RSpec/DescribeClass
  let(:command_klass) { Command }
  let(:command) { command_klass.new }

  it 'returns new instance of command class' do
    expect(command).to be_a_kind_of(command_klass)
  end
end
