class SellableItemsController < ApplicationController
  # GET /sellable_items
  # GET /sellable_items.json
  def index
    @sellable_items = SellableItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sellable_items }
    end
  end

  # GET /sellable_items/1
  # GET /sellable_items/1.json
  def show
    @sellable_item = SellableItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sellable_item }
    end
  end

  # GET /sellable_items/new
  # GET /sellable_items/new.json
  def new
    @sellable_item = SellableItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sellable_item }
    end
  end

  # GET /sellable_items/1/edit
  def edit
    @sellable_item = SellableItem.find(params[:id])
  end

  # POST /sellable_items
  # POST /sellable_items.json
  def create
    @sellable_item = SellableItem.new(params[:sellable_item])

    respond_to do |format|
      if @sellable_item.save
        format.html { redirect_to @sellable_item, notice: 'Sellable item was successfully created.' }
        format.json { render json: @sellable_item, status: :created, location: @sellable_item }
      else
        format.html { render action: "new" }
        format.json { render json: @sellable_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sellable_items/1
  # PUT /sellable_items/1.json
  def update
    @sellable_item = SellableItem.find(params[:id])

    respond_to do |format|
      if @sellable_item.update_attributes(params[:sellable_item])
        format.html { redirect_to @sellable_item, notice: 'Sellable item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sellable_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellable_items/1
  # DELETE /sellable_items/1.json
  def destroy
    @sellable_item = SellableItem.find(params[:id])
    @sellable_item.destroy

    respond_to do |format|
      format.html { redirect_to sellable_items_url }
      format.json { head :ok }
    end
  end
end
