class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.boolean :win
      t.string  :name
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
