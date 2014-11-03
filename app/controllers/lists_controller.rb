class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    list_params = params.require(:list).permit(:name, :type)
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list_params = params.require(:list).permit(:name, :type)
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to lists_path
  end

def destroy
  @list = List.find(params[:id])
  @list.destroy
  redirect_to lists_path
end

end
