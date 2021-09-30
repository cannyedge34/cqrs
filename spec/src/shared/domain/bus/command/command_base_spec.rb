describe Src::Shared::Domain::Bus::Command::CommandBase do
  let(:command_klass) { described_class }
  let(:command) { command_klass.new }

  it 'returns new instance of command class' do
    expect(command).to be_a_kind_of(command_klass)
  end
end
