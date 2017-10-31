require 'test_helper'

class EsummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @esummary = esummaries(:one)
  end

  test "should get index" do
    get esummaries_url
    assert_response :success
  end

  test "should get new" do
    get new_esummary_url
    assert_response :success
  end

  test "should create esummary" do
    assert_difference('Esummary.count') do
      post esummaries_url, params: { esummary: {  } }
    end

    assert_redirected_to esummary_url(Esummary.last)
  end

  test "should show esummary" do
    get esummary_url(@esummary)
    assert_response :success
  end

  test "should get edit" do
    get edit_esummary_url(@esummary)
    assert_response :success
  end

  test "should update esummary" do
    patch esummary_url(@esummary), params: { esummary: {  } }
    assert_redirected_to esummary_url(@esummary)
  end

  test "should destroy esummary" do
    assert_difference('Esummary.count', -1) do
      delete esummary_url(@esummary)
    end

    assert_redirected_to esummaries_url
  end
end
