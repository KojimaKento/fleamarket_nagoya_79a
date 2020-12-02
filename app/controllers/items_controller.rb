class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]

  def index
    @items = Item.order('id DESC').limit(5).where.not(seller_id: current_user&.id)
    @my_items = Item.where(seller_id: current_user&.id).limit(5)

  end

  def new
    @item = Item.new
    @item.item_images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      @item.item_images.new(params[item_images_attributes: [:src, :id]])
      render :new
    end
  end

  def edit
    @item.item_images.build
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def show
  end

  def purchase
    @item = Item.new
    @item.item_images.new
    @card = current_user.cards.first
    if @card.present?
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    else
      redirect_to action: "confirmation", id: current_user.id
    end
  end

  def  done
    @item= Item.find(params[:id])
    @item.update( buyer_id: current_user.id)
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :introduction, :price, :category_id, :brand, :condition_id, :shipping_date_id, :delivery_source_area_id, :postage_id, item_images_attributes: [:src, :id]).merge(seller_id: current_user.id)
  end

end
