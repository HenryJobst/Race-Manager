class Stamp < ActiveRecord::Base
self.primary_key = "id_stamp"
belongs_to :event, :foreign_key => "id_event"
end
