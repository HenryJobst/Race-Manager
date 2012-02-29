class CreateSubevents < ActiveRecord::Migration
  def change
    create_table :subevents do |t|
      t.references :event
      t.string :name
      t.integer :distance
      t.time :starttime
      t.integer :type
      t.integer :posts
      t.integer :height

      t.timestamps
    end
  end
end
