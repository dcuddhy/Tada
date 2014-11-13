class ItemsController < ApplicationController

  def index
    @item = Item.new
    @items = Item.all
  end

  def new
    @items = Item.all
  end

  def create
    @item = Item.new(params.require(:item).permit(
    :name,
    :kind,
    :groceries,
    :home_improvement,
    :electronics,
    :clothes))
    @item.save
    redirect_to items_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(params.require(:item).permit(
    :name,
    :kind,
    :groceries,
    :home_improvement,
    :electronics,
    :clothes))
    redirect_to items_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

end
