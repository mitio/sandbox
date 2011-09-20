class SellableItemAttributesController < ApplicationController
  before_filter :set_sellable_item

  # GET /sellable_item_attributes
  # GET /sellable_item_attributes.json
  def index
    @sellable_item_attributes = SellableItemAttribute.all(:sellable_item_id => params[:sellable_item_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sellable_item_attributes }
    end
  end

  # GET /sellable_item_attributes/1
  # GET /sellable_item_attributes/1.json
  def show
    @sellable_item_attribute = SellableItemAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sellable_item_attribute }
    end
  end

  # GET /sellable_item_attributes/new
  # GET /sellable_item_attributes/new.json
  def new
    @sellable_item_attribute = SellableItemAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sellable_item_attribute }
    end
  end

  # GET /sellable_item_attributes/1/edit
  def edit
    @sellable_item_attribute = SellableItemAttribute.find(params[:id])
  end

  # POST /sellable_item_attributes
  # POST /sellable_item_attributes.json
  def create
    @sellable_item_attribute = SellableItemAttribute.new(params[:sellable_item_attribute])

    respond_to do |format|
      if @sellable_item_attribute.save
        format.html { redirect_to @sellable_item_attribute, notice: 'Sellable item attribute was successfully created.' }
        format.json { render json: @sellable_item_attribute, status: :created, location: @sellable_item_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @sellable_item_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sellable_item_attributes/1
  # PUT /sellable_item_attributes/1.json
  def update
    @sellable_item_attribute = SellableItemAttribute.find(params[:id])

    respond_to do |format|
      if @sellable_item_attribute.update_attributes(params[:sellable_item_attribute])
        format.html { redirect_to @sellable_item_attribute, notice: 'Sellable item attribute was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sellable_item_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellable_item_attributes/1
  # DELETE /sellable_item_attributes/1.json
  def destroy
    @sellable_item_attribute = SellableItemAttribute.find(params[:id])
    @sellable_item_attribute.destroy

    respond_to do |format|
      format.html { redirect_to sellable_item_attributes_url }
      format.json { head :ok }
    end
  end

  protected

  def set_sellable_item
    @sellable_item = SellableItem.find params[:sellable_item_id] unless params[:sellable_item_id].blank?
  end
end
