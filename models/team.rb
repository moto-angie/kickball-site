require_relative "./team_data"

class Team
  def initialize
  end
  
  def self.all
    TeamData::ROLL_CALL
  end
end
