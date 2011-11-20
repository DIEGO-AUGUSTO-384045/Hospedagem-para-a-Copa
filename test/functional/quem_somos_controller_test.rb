require 'test_helper'

class QuemSomosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
