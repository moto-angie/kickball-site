require "spec_helper"

RSpec.describe Player do
  let(:new_player) { Player.new("Jimmy McGill", "Catcher", "Breaking Bad Boys") }

  describe ".new" do
    it "Is a player object" do
      expect(new_player).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(new_player.name).to eq("Jimmy McGill")
    end
  end

  describe ".all" do
    it "returns an array of Player objects that correspond to every player" do
      expect(Player.all).to be_an(Array)
    end
  end
end
