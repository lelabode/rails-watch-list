class BookmarksController < ApplicationController
  before_action :find_list
  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list_id = @list.id
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmark_path(@bookmark), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id,:movie_id)
  end

  def find_list
    @list = List.find(params[:list_id])
  end
end
