require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    @player_list = []
    TeamData::ROLL_CALL.keys.each do |team|
      pl_team = team
      TeamData::ROLL_CALL[pl_team].keys.each do |pl_position|
        pl_name = TeamData::ROLL_CALL[pl_team][pl_position]
        @player_list << Player.new(pl_name, pl_position, pl_team)
      end
    end
    @player_list
  end
end
