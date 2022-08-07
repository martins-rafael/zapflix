class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :cover_url
      t.date :published_at
      t.references :director, null: false, foreign_key: true
      t.references :movie_genre, null: false, foreign_key: true
      t.text :synopsis

      t.timestamps
    end
  end
end
