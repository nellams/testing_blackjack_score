require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["5♦", "3♥"]) }
  let(:hand_2) { Hand.new(["K♥", "10♥", "2♠"])}
  let(:hand_3) { Hand.new(["A♣", "9♣", "Q♣"])}
  let(:hand_4) { Hand.new(["K♣", "10♣", "A♣"])}
  let(:hand_5) { Hand.new(["2♣", "3♣", "A♣"])}


  describe "#calculate_hand" do
    it "passes" do
      expect(hand.calculate_hand).to eq(8)
      expect(hand_3.calculate_hand).to eq(20)
      expect(hand_4.calculate_hand).to eq(21)
      expect(hand_5.calculate_hand).to eq(16)
    end

    it "fails" do
      expect(hand_2.calculate_hand).to eq("fails")
    end

  end
end
