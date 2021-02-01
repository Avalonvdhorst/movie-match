class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end

    remove_column :movies, :genre
    remove_column :user_rooms, :genres
  end
end
