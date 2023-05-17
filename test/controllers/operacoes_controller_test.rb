require "test_helper"

class OperacoesControllerTest < ActionDispatch::IntegrationTest
  test "should get importar" do
    get operacoes_importar_url
    assert_response :success
  end
end
