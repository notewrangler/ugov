require 'test_helper'

class OpEdsControllerTest < ActionController::TestCase
  setup do
    @op_ed = op_eds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:op_eds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create op_ed" do
    assert_difference('OpEd.count') do
      post :create, op_ed: { author: @op_ed.author, content: @op_ed.content, title: @op_ed.title }
    end

    assert_redirected_to op_ed_path(assigns(:op_ed))
  end

  test "should show op_ed" do
    get :show, id: @op_ed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @op_ed
    assert_response :success
  end

  test "should update op_ed" do
    patch :update, id: @op_ed, op_ed: { author: @op_ed.author, content: @op_ed.content, title: @op_ed.title }
    assert_redirected_to op_ed_path(assigns(:op_ed))
  end

  test "should destroy op_ed" do
    assert_difference('OpEd.count', -1) do
      delete :destroy, id: @op_ed
    end

    assert_redirected_to op_eds_path
  end
end
