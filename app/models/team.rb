class Team < ActiveRecord::Base
  belongs_to :club
  belongs_to :event
  belongs_to :subevent
  has_many :team_competitors
  has_many :competitors, :through => :team_competitors
end
