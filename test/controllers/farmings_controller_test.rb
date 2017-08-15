require 'test_helper'

class FarmingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farming = farmings(:one)
  end

  test "should get index" do
    get farmings_url
    assert_response :success
  end

  test "should get new" do
    get new_farming_url
    assert_response :success
  end

  test "should create farming" do
    assert_difference('Farming.count') do
      post farmings_url, params: { farming: { recomendaciones: @farming.recomendaciones, semilla: @farming.semilla, user_id: @farming.user_id } }
    end

    assert_redirected_to farming_url(Farming.last)
  end

  test "should show farming" do
    get farming_url(@farming)
    assert_response :success
  end

  test "should get edit" do
    get edit_farming_url(@farming)
    assert_response :success
  end

  test "should update farming" do
    patch farming_url(@farming), params: { farming: { recomendaciones: @farming.recomendaciones, semilla: @farming.semilla, user_id: @farming.user_id } }
    assert_redirected_to farming_url(@farming)
  end

  test "should destroy farming" do
    assert_difference('Farming.count', -1) do
      delete farming_url(@farming)
    end

    assert_redirected_to farmings_url
  end
end
