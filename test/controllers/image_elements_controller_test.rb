require 'test_helper'

class ImageElementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get image_elements_index_url
    assert_response :success
  end

end
