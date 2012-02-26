class CreateLcevents < ActiveRecord::Migration
  def change
    change_table :lcevents do |t|
      t.datetime :created_on, :updated_on
    end
  end
end
