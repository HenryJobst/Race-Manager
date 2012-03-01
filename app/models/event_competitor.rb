class EventCompetitor < ActiveRecord::Base
belongs_to :event
belongs_to :subevent
belongs_to :competitor

end
