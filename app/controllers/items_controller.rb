class ItemsController < ApplicationController
  def index
    @item = Item.new
    @valid_items = Item.current_items
  end

  def create
    @item = Item.new(item_params)
    flash[:error] = "Invalid item" unless @item.save
    redirect_to root_path
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days)
  end
end
