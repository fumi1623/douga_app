class AddMovieUrlToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :movie_url, :text
  end
end
