require 'player'

describe Player do

  let(:subject) { Player.new("David") }
  let(:opponent) { Player.new("Goliath") }
  # let{:game} { double(:game) }

  describe 'creation' do
    it 'creates a new instance of the described class' do
      expect(Player).to respond_to(:new)
    end
  end

  describe '#name' do
    it "returns the player's name" do
      expect(subject.name).to eq("David")
    end
  end

  describe 'hit points' do
    it "gives the player hit points" do
      expect(subject.hits).to eq(described_class::STARTING_HITS)
    end

    it "deducts hit points when an attack is received" do
      expect { subject.take_damage }.to change { subject.hits }.by -10
    end
  end
end
