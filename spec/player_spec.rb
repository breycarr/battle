require 'player'

describe Player do

  let(:subject) { Player.new("David") }

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
      expect(subject.hits).to eq(100)
    end

    it "deducts hit points when an attack is received" do
      expect { subject.receive_attack }.to change { subject.hits }.by -10
    end
  end
end
