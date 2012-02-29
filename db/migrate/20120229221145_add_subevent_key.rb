class AddSubeventKey < ActiveRecord::Migration
  def change
    add_column :teams, :subevent_id, :integer
  end
end
