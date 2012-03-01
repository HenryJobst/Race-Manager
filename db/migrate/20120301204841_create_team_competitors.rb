class CreateTeamCompetitors < ActiveRecord::Migration
  def change
    create_table :team_competitors do |t|
      t.integer :team_id
      t.integer :competitor_id
      t.integer :position
      t.integer :card_id

      t.timestamps
    end
  end
end
