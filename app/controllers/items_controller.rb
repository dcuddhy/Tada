class ItemsController < ApplicationController

  def index
    @item = Item.new

    if params[:filter] == 'groceries'
       @items = Item.all.where(groceries:"true")
    elsif params[:filter] == 'home_improvement'
       @items = Item.all.where(home_improvement:"true")
    elsif params[:filter] == 'electronics'
       @items = Item.all.where(electronics:"true")
    elsif params[:filter] == 'clothes'
       @items = Item.all.where(clothes:"true")
    else
       @items = Item.all

    end
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
