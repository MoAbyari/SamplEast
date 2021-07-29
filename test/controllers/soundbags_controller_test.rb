require 'test_helper'

class SoundbagsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get soundbags_new_url
    assert_response :success
  end

end
