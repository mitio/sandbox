class SellableItemAttributesController < ApplicationController
  before_filter :set_sellable_item

  def index
    @sellable_item_attributes = @sellable_item.sellable_item_attributes
  end

  def show
    @sellable_item_attribute = @sellable_item.sellable_item_attributes.find(params[:id])
  end

  def new
    @sellable_item_attribute = @sellable_item.sellable_item_attributes.build
  end

  def edit
    @sellable_item_attribute = @sellable_item.sellable_item_attributes.find(params[:id])
  end

  def create
    @sellable_item_attribute = @sellable_item.sellable_item_attributes.build(params[:sellable_item_attribute])

    if @sellable_item_attribute.save
      redirect_to [@sellable_item, @sellable_item_attribute], notice: 'Sellable item attribute was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /sellable_item_attributes/1
  # PUT /sellable_item_attributes/1.json
  def update
    @sellable_item_attribute = @sellable_item.sellable_item_attributes.find(params[:id])

    if @sellable_item_attribute.update_attributes(params[:sellable_item_attribute])
      redirect_to [@sellable_item, @sellable_item_attribute], notice: 'Sellable item attribute was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /sellable_item_attributes/1
  # DELETE /sellable_item_attributes/1.json
  def destroy
    @sellable_item_attribute = @sellable_item.sellable_item_attributes.find(params[:id])
    @sellable_item_attribute.destroy

    redirect_to sellable_item_attributes_url
  end

  protected

  def set_sellable_item
    @sellable_item = SellableItem.find params[:sellable_item_id]
  end
end
