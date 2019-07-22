class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date :date
      t.integer :amount
      t.integer :players_count
      t.integer :amount_per_player
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
