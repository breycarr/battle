require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player) { double(:player) }
  let(:opponent) {double(:player)}

  describe '#attack' do
    it 'damage the opponent' do
      expect(opponent).to receive(:take_damage)
      game.attack(opponent)
    end
  end
end
