class RenameMovieIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :movie__id, :movie_id
  end
end
