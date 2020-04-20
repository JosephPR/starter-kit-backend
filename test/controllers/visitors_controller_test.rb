require 'test_helper'

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor = visitors(:one)
  end

  test "should get index" do
    get visitors_url, as: :json
    assert_response :success
  end

  test "should create visitor" do
    assert_difference('Visitor.count') do
      post visitors_url, params: { visitor: { about: @visitor.about, name: @visitor.name } }, as: :json
    end

    assert_response 201
  end

  test "should show visitor" do
    get visitor_url(@visitor), as: :json
    assert_response :success
  end

  test "should update visitor" do
    patch visitor_url(@visitor), params: { visitor: { about: @visitor.about, name: @visitor.name } }, as: :json
    assert_response 200
  end

  test "should destroy visitor" do
    assert_difference('Visitor.count', -1) do
      delete visitor_url(@visitor), as: :json
    end

    assert_response 204
  end
end
