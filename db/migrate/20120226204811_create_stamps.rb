class CreateStamps < ActiveRecord::Migration
  def change
    change_table :stamps do |t|
      t.datetime :created_on, :updated_on
    end
  end
end
