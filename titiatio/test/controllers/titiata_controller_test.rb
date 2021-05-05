require "test_helper"

class TitiataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titiatum = titiata(:one)
  end

  test "should get index" do
    get titiata_url
    assert_response :success
  end

  test "should get new" do
    get new_titiatum_url
    assert_response :success
  end

  test "should create titiatum" do
    assert_difference('Titiatum.count') do
      post titiata_url, params: { titiatum: { titiatum: @titiatum.titiatum } }
    end

    assert_redirected_to titiatum_url(Titiatum.last)
  end

  test "should show titiatum" do
    get titiatum_url(@titiatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_titiatum_url(@titiatum)
    assert_response :success
  end

  test "should update titiatum" do
    patch titiatum_url(@titiatum), params: { titiatum: { titiatum: @titiatum.titiatum } }
    assert_redirected_to titiatum_url(@titiatum)
  end

  test "should destroy titiatum" do
    assert_difference('Titiatum.count', -1) do
      delete titiatum_url(@titiatum)
    end

    assert_redirected_to titiata_url
  end
end
