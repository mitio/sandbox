class SellableItemCategoriesController < ApplicationController
  # GET /sellable_item_categories
  # GET /sellable_item_categories.json
  def index
    @sellable_item_categories = SellableItemCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sellable_item_categories }
    end
  end

  # GET /sellable_item_categories/1
  # GET /sellable_item_categories/1.json
  def show
    @sellable_item_category = SellableItemCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sellable_item_category }
    end
  end

  # GET /sellable_item_categories/new
  # GET /sellable_item_categories/new.json
  def new
    @sellable_item_category = SellableItemCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sellable_item_category }
    end
  end

  # GET /sellable_item_categories/1/edit
  def edit
    @sellable_item_category = SellableItemCategory.find(params[:id])
  end

  # POST /sellable_item_categories
  # POST /sellable_item_categories.json
  def create
    @sellable_item_category = SellableItemCategory.new(params[:sellable_item_category])

    respond_to do |format|
      if @sellable_item_category.save
        format.html { redirect_to @sellable_item_category, notice: 'Sellable item category was successfully created.' }
        format.json { render json: @sellable_item_category, status: :created, location: @sellable_item_category }
      else
        format.html { render action: "new" }
        format.json { render json: @sellable_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sellable_item_categories/1
  # PUT /sellable_item_categories/1.json
  def update
    @sellable_item_category = SellableItemCategory.find(params[:id])

    respond_to do |format|
      if @sellable_item_category.update_attributes(params[:sellable_item_category])
        format.html { redirect_to @sellable_item_category, notice: 'Sellable item category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sellable_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellable_item_categories/1
  # DELETE /sellable_item_categories/1.json
  def destroy
    @sellable_item_category = SellableItemCategory.find(params[:id])
    @sellable_item_category.destroy

    respond_to do |format|
      format.html { redirect_to sellable_item_categories_url }
      format.json { head :ok }
    end
  end
end
