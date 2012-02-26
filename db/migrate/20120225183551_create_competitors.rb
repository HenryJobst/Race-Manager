class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :card_id
      t.string :gender
      t.integer :year_of_birth
      t.integer :club_id

      t.timestamps
    end
  end
end
