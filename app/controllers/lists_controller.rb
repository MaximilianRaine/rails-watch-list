class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
    @bookmark = Bookmark.new
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private
  def set_list
    @list = List.includes(:bookmarks).find_by(id: params[:id])
    unless @list
      redirect_to lists_path
    end
  end

  def list_params
    params.require(:list).permit(:name, :image_url)
  end
end
