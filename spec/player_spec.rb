require 'player'

describe Player do
  let(:player1) { Player.new('John') }
  it 'returns the name' do
    expect(player1.name).to eq 'John'
  end
  context 'health points' do
    it 'should start with 50HP' do
      expect(player1.health).to eq 50
    end
    it 'should have 40HP after 1 attack' do
      player1.attacked
      expect(player1.health).to eq 40
    end
  end
end
