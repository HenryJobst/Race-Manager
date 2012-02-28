class Team < ActiveRecord::Base
  belongs_to :club
  belongs_to :lcevent, foreign_key => "event_id"

end
