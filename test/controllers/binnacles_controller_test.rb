require 'test_helper'

class BinnaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @binnacle = binnacles(:one)
  end

  test "should get index" do
    get binnacles_url
    assert_response :success
  end

  test "should get new" do
    get new_binnacle_url
    assert_response :success
  end

  test "should create binnacle" do
    assert_difference('Binnacle.count') do
      post binnacles_url, params: { binnacle: { farming_id: @binnacle.farming_id, fecha: @binnacle.fecha, foto1: @binnacle.foto1, foto2: @binnacle.foto2, foto3: @binnacle.foto3, nroriegos: @binnacle.nroriegos, observaciones: @binnacle.observaciones, temperatura: @binnacle.temperatura, user_id: @binnacle.user_id } }
    end

    assert_redirected_to binnacle_url(Binnacle.last)
  end

  test "should show binnacle" do
    get binnacle_url(@binnacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_binnacle_url(@binnacle)
    assert_response :success
  end

  test "should update binnacle" do
    patch binnacle_url(@binnacle), params: { binnacle: { farming_id: @binnacle.farming_id, fecha: @binnacle.fecha, foto1: @binnacle.foto1, foto2: @binnacle.foto2, foto3: @binnacle.foto3, nroriegos: @binnacle.nroriegos, observaciones: @binnacle.observaciones, temperatura: @binnacle.temperatura, user_id: @binnacle.user_id } }
    assert_redirected_to binnacle_url(@binnacle)
  end

  test "should destroy binnacle" do
    assert_difference('Binnacle.count', -1) do
      delete binnacle_url(@binnacle)
    end

    assert_redirected_to binnacles_url
  end
end
