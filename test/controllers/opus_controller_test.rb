require 'test_helper'

class OpusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opu = opus(:one)
  end

  test "should get index" do
    get opus_url
    assert_response :success
  end

  test "should get new" do
    get new_opu_url
    assert_response :success
  end

  test "should create opu" do
    assert_difference('Opu.count') do
      post opus_url, params: { opu: { designer: @opu.designer, image_url: @opu.image_url, title: @opu.title, year: @opu.year } }
    end

    assert_redirected_to opu_url(Opu.last)
  end

  test "should show opu" do
    get opu_url(@opu)
    assert_response :success
  end

  test "should get edit" do
    get edit_opu_url(@opu)
    assert_response :success
  end

  test "should update opu" do
    patch opu_url(@opu), params: { opu: { designer: @opu.designer, image_url: @opu.image_url, title: @opu.title, year: @opu.year } }
    assert_redirected_to opu_url(@opu)
  end

  test "should destroy opu" do
    assert_difference('Opu.count', -1) do
      delete opu_url(@opu)
    end

    assert_redirected_to opus_url
  end
end
