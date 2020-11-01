class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:item).permit(:name,:introduction, :price, :category_id, :brand, :condition_id, :shipping_date_id, :delivery_source_area_id)
  end

end
