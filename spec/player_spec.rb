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
end
