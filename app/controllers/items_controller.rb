class ItemsController < ApplicationController
     before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: "Hell yea!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: "Done!"
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_index_path, notice: "GONE!"
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
