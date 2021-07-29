require 'test_helper'

class ExploresControllerTest < ActionDispatch::IntegrationTest
  test "should get samples" do
    get explores_samples_url
    assert_response :success
  end

end
