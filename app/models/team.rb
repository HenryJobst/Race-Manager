class Team < ActiveRecord::Base
  belongs_to :club
  belongs_to :event
  belongs_to :subevent

end
