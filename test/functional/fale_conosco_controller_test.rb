require 'test_helper'

class FaleConoscoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
