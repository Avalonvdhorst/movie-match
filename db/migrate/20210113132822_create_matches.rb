class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :game_room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
