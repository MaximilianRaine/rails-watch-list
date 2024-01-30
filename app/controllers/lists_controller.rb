class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @bookmarks = @list&.bookmarks || []
    puts "Debug: @list - #{@list.inspect}"
    puts "Debug: @bookmarks - #{@bookmarks.inspect}"
  end


  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path, notice: 'List was successfully deleted.'
  end

  private
  def set_list
    @list = List.includes(:bookmarks).find_by(id: params[:id])
    unless @list
      redirect_to lists_path, alert: 'List not found'
    end
  end
  def list_params
    params.require(:list).permit(:name, :image_url)
  end
end
