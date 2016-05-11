require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get noticias" do
    get :noticias
    assert_response :success
  end

end
