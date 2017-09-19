require_relative "./team_data"

class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    @team_list = []
    TeamData::ROLL_CALL.keys.each do |team|
      @team_list << team
    end
    @team_list
  end

  def self.players(team_name)
    TeamData::ROLL_CALL[:"#{team_name}"].values
  end
end
