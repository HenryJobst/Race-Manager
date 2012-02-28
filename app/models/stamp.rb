class Stamp < ActiveRecord::Base
set_primary_key "id_stamp"
belongs_to :lcevent, :foreign_key => "id_event"

end
