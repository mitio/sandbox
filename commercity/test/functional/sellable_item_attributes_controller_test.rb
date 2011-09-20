require 'test_helper'

class SellableItemAttributesControllerTest < ActionController::TestCase
  setup do
    @sellable_item_attribute = sellable_item_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellable_item_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sellable_item_attribute" do
    assert_difference('SellableItemAttribute.count') do
      post :create, sellable_item_attribute: @sellable_item_attribute.attributes
    end

    assert_redirected_to sellable_item_attribute_path(assigns(:sellable_item_attribute))
  end

  test "should show sellable_item_attribute" do
    get :show, id: @sellable_item_attribute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sellable_item_attribute.to_param
    assert_response :success
  end

  test "should update sellable_item_attribute" do
    put :update, id: @sellable_item_attribute.to_param, sellable_item_attribute: @sellable_item_attribute.attributes
    assert_redirected_to sellable_item_attribute_path(assigns(:sellable_item_attribute))
  end

  test "should destroy sellable_item_attribute" do
    assert_difference('SellableItemAttribute.count', -1) do
      delete :destroy, id: @sellable_item_attribute.to_param
    end

    assert_redirected_to sellable_item_attributes_path
  end
end
