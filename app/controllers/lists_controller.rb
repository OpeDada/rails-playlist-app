class ListsController < ApplicationController

  before_action :set_params, only: [:show, :new, :create]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(set_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photos [])
  end

  def set_params
    @list = List.find(params[:id])
  end

end
