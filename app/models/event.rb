class Event < ActiveRecord::Base
  set_table_name "lcevents" 
  set_primary_key "id_event"
  has_many :subevents
  has_many :stamps
  has_many :teams

end
