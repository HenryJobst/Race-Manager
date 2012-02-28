class Lcevent < ActiveRecord::Base
set_primary_key "id_event"
has_many :stamps

end
