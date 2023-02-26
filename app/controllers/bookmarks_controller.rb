class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
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

  def set_bookmark
    @bookmark = set_bookmark.find(params[:bookmark_id])
  end
end
