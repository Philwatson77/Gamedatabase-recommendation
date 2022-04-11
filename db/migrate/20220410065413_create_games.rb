class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :title
      t.date :release_date
      t.text :genre
      t.text :platforms
      t.float :average_game_time
      t.text :image

      t.timestamps
    end
  end
end
