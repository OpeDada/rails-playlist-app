class BookmarksController < ApplicationController
  before_action :set_params, only: [:new, :create, :destroy]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmar.list)
  end

  private

  def set_params
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:coment, :song_id)
  end
end
