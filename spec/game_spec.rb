require 'game'

describe Game do

  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double(:player) }
  let(:opponent) {double(:player)}

  describe '#attack' do
    it 'damage the opponent' do
      expect(opponent).to receive(:take_damage)
      game.attack(opponent)
    end
  end

  describe '#player1' do
    it "retrieves first player" do
      expect(game.player1).to eq(player)
    end
  end

  describe '#player2' do
    it "retrieves second player" do
      expect(game.player2).to eq(opponent)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player
    end
  end

  describe 'switch_turn' do
    it 'switches the turn' do
      expect { game.switch_turn }.to change { game.current_turn }.to eq opponent
    end
  end
end
