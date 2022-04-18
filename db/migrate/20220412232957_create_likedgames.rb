class CreateLikedgames < ActiveRecord::Migration[5.2]
  def change
    create_table :likedgames do |t|
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
