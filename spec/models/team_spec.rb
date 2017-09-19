require "spec_helper"

RSpec.describe Team do
  let(:new_team) { Team.new("Breaking Bad Boys") }

  describe ".new" do
    it "Is a team object" do
      expect(new_team).to be_a(Team)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(new_team.name).to eq("Breaking Bad Boys")
    end
  end

  describe ".all" do
    it "returns an array of Team objects that correspond to every single team" do
      expect(Team.all).to be_an(Array)
    end
  end

  describe ".players" do
    it "returns an array of Player objects that correspond to every player of that particular team" do
      expect(Team.players("Simpson Slammers")).to be_an(Array)
    end
  end
end
