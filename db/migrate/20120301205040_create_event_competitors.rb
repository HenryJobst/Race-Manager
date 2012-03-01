class CreateEventCompetitors < ActiveRecord::Migration
  def change
    create_table :event_competitors do |t|
      t.integer :event_id
      t.integer :subevent_id
      t.integer :competitor_id
      t.integer :card_id

      t.timestamps
    end
  end
end
