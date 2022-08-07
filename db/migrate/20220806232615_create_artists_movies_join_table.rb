class CreateArtistsMoviesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :artists, :movies
  end
end
