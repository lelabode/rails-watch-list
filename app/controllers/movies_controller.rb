class MoviesController < ApplicationController
  def change
    @movies = Movie.all
    @movie = Movie.new
  end

  def def new
    @movies = Movie.new
  end
  def create
    @movie = Movie.new(list_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new, status: :unprocessable_entity
    end
    def destroy
      @movie = movie.find(params[:id])
      @movie.destroy
      redirect_to movie_path(@movie), status: :see_other
    end
    private

  def set_movie
    @movie = set_moveie.find(params[:movie_id])
  end


end
