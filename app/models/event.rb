class Event < ActiveRecord::Base
  self.table_name = "lcevents"   
  self.primary_key = "id_event"
  has_many :subevents, :primary_key => "event_foreign_id"
  has_many :stamps, :primary_key => "event_foreign_id", :foreign_key => "id_event"
  has_many :teams, :primary_key => "event_foreign_id"
  has_many :event_competitors, :primary_key => "event_foreign_id"
  has_many :competitors, :through => :event_competitors, :primary_key => "event_foreign_id"
end
