class Event < ActiveRecord::Base
  set_table_name "lcevents" 
  set_primary_key "id_event"
  has_many :subevents
  has_many :stamps
  has_many :teams
  has_many :event_competitors
  has_many :competitors, :through => :event_competitors
end
