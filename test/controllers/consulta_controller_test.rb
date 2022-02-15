require "test_helper"

class ConsultaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consulta_index_url
    assert_response :success
  end
end
