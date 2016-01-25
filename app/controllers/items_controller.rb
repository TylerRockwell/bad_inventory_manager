class ItemsController < ApplicationController
  def index
    @category_list = Category.all.map{ |category| [category.name, category.id] }
    @valid_items = Item.all.select{ |item| item.expires > Date.today }
  end

  def create
    @items = Item.all
    if item_params[:name].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :index and return
    end
    if item_params[:price].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :index and return
    end
    if item_params[:quantity].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :index and return
    end
    if item_params[:shelf_life_days].blank?
      @item = Item.new
      flash[:error] = "Invalid"
      render :index and return
    end
    if !(@item = Item.create(item_params))
    else
      @item = Item.new
    end
    render :index
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days)
  end
end
