require 'test_helper'

class FormularioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formulario_index_url
    assert_response :success
  end

  test "should get respuesta" do
    get formulario_respuesta_url
    assert_response :success
  end

end
