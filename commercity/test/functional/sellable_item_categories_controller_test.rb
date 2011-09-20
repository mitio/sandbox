require 'test_helper'

class SellableItemCategoriesControllerTest < ActionController::TestCase
  setup do
    @sellable_item_category = sellable_item_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellable_item_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sellable_item_category" do
    assert_difference('SellableItemCategory.count') do
      post :create, sellable_item_category: @sellable_item_category.attributes
    end

    assert_redirected_to sellable_item_category_path(assigns(:sellable_item_category))
  end

  test "should show sellable_item_category" do
    get :show, id: @sellable_item_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sellable_item_category.to_param
    assert_response :success
  end

  test "should update sellable_item_category" do
    put :update, id: @sellable_item_category.to_param, sellable_item_category: @sellable_item_category.attributes
    assert_redirected_to sellable_item_category_path(assigns(:sellable_item_category))
  end

  test "should destroy sellable_item_category" do
    assert_difference('SellableItemCategory.count', -1) do
      delete :destroy, id: @sellable_item_category.to_param
    end

    assert_redirected_to sellable_item_categories_path
  end
end
