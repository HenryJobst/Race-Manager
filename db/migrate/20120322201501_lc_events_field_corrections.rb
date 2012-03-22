class LcEventsFieldCorrections < ActiveRecord::Migration
  change_table :lcevents do |t|
    t.change :id_event, :integer, null: false, limit: 11
    t.change :event_foreign_id, :string, null: false, limit: 15 
  end  
end
