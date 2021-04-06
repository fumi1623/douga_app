class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
    @movie.save
    redirect_to movies_path
  end

  def index
    @movies = Movie.page(params[:page]).reverse_order
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movie_path
  end

  private

  def movie_params
    params.require(:movie).permit(:movie_name, :movie_url, :caption)
  end

end
