require 'test_helper'

class ManifestosControllerTest < ActionController::TestCase
  setup do
    @manifesto = manifestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manifestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manifesto" do
    assert_difference('Manifesto.count') do
      post :create, manifesto: { content: @manifesto.content, create_date: @manifesto.create_date, human_id: @manifesto.human_id }
    end

    assert_redirected_to manifesto_path(assigns(:manifesto))
  end

  test "should show manifesto" do
    get :show, id: @manifesto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manifesto
    assert_response :success
  end

  test "should update manifesto" do
    patch :update, id: @manifesto, manifesto: { content: @manifesto.content, create_date: @manifesto.create_date, human_id: @manifesto.human_id }
    assert_redirected_to manifesto_path(assigns(:manifesto))
  end

  test "should destroy manifesto" do
    assert_difference('Manifesto.count', -1) do
      delete :destroy, id: @manifesto
    end

    assert_redirected_to manifestos_path
  end
end
