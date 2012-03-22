class ConvertTextToTimestampInLcEvents < ActiveRecord::Migration
  change_table :lcevents do |t|
    t.change :event_begin, :datetime, default: '2012-01-01 00:00:00', null: false
    t.change :event_end, :datetime, default: '2012-01-01 00:00:00', null: false     
  end  
end
