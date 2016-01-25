class ItemsController < ApplicationController
  def index
    @category_list = Category.all.map{ |category| [category.name, category.id] }
    @valid_items = Item.all.select{ |item| item.expires > Date.today }
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
