require 'test_helper'

class SellableItemsControllerTest < ActionController::TestCase
  setup do
    @sellable_item = sellable_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellable_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sellable_item" do
    assert_difference('SellableItem.count') do
      post :create, sellable_item: @sellable_item.attributes
    end

    assert_redirected_to sellable_item_path(assigns(:sellable_item))
  end

  test "should show sellable_item" do
    get :show, id: @sellable_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sellable_item.to_param
    assert_response :success
  end

  test "should update sellable_item" do
    put :update, id: @sellable_item.to_param, sellable_item: @sellable_item.attributes
    assert_redirected_to sellable_item_path(assigns(:sellable_item))
  end

  test "should destroy sellable_item" do
    assert_difference('SellableItem.count', -1) do
      delete :destroy, id: @sellable_item.to_param
    end

    assert_redirected_to sellable_items_path
  end
end
