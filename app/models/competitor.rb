class Competitor < ActiveRecord::Base
  belongs_to :club
  has_many :event_competitors
  has_many :events, :through => :event_competitors
  has_many :team_competitors
  has_many :teams, :through => :team_competitors
end
