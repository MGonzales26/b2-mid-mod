class CreateMoviesActors < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_actors do |t|
      t.references :movie, foreign_key: true
      t.references :actor, foreign_key: true
    end
  end
end
