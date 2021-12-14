class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.create(movie_params)
    render json: movie, status: :ok
  end

  private
  
  def movie_params
    params.permit(:title, :year,:length, :director, :description, :category, :discount, :poster_url, :female_directory)
  end

end
