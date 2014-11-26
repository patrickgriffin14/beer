require 'test_helper'

class CatalogControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 2
    assert_select 'h3', 'Book1'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
