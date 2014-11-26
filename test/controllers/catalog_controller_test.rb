require 'test_helper'

class CatalogControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Bo Bristle'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
