require 'test_helper'

class IdsControllerTest < ActionController::TestCase
  setup do
    @id = ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create id" do
    assert_difference('Id.count') do
      post :create, id: { created: @id.created, hashcode: @id.hashcode, updated: @id.updated, url: @id.url }
    end

    assert_redirected_to id_path(assigns(:id))
  end

  test "should show id" do
    get :show, id: @id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @id
    assert_response :success
  end

  test "should update id" do
    patch :update, id: @id, id: { created: @id.created, hashcode: @id.hashcode, updated: @id.updated, url: @id.url }
    assert_redirected_to id_path(assigns(:id))
  end

  test "should destroy id" do
    assert_difference('Id.count', -1) do
      delete :destroy, id: @id
    end

    assert_redirected_to ids_path
  end
end
