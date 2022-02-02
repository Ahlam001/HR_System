require "test_helper"

class DevisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devision = devisions(:one)
  end

  test "should get index" do
    get devisions_url
    assert_response :success
  end

  test "should get new" do
    get new_devision_url
    assert_response :success
  end

  test "should create devision" do
    assert_difference("Devision.count") do
      post devisions_url, params: { devision: { description: @devision.description, manager: @devision.manager, name: @devision.name, teams: @devision.teams } }
    end

    assert_redirected_to devision_url(Devision.last)
  end

  test "should show devision" do
    get devision_url(@devision)
    assert_response :success
  end

  test "should get edit" do
    get edit_devision_url(@devision)
    assert_response :success
  end

  test "should update devision" do
    patch devision_url(@devision), params: { devision: { description: @devision.description, manager: @devision.manager, name: @devision.name, teams: @devision.teams } }
    assert_redirected_to devision_url(@devision)
  end

  test "should destroy devision" do
    assert_difference("Devision.count", -1) do
      delete devision_url(@devision)
    end

    assert_redirected_to devisions_url
  end
end
