class CreateJoinTableStudiosMovies < ActiveRecord::Migration[5.2]
  def change
    create_join_table :studios, :movies do |t|
      t.index [:studio_id, :movie_id]
      t.index [:movie_id, :studio_id]
    end
  end
end
