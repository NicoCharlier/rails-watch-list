class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @lists = List.new(lists_params)
    @lists.save
    redirect_to lists_path
  end

private
  def lists_params
  params.require(:list).permit(:name)
end
end
