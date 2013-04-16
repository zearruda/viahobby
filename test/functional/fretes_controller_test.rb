require 'test_helper'

class FretesControllerTest < ActionController::TestCase
  test "should get calc" do
    get :calc
    assert_response :success
  end

end
