require "test_helper"

class ConcesionariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concesionarium = concesionaria(:one)
  end

  test "should get index" do
    get concesionaria_url
    assert_response :success
  end

  test "should get new" do
    get new_concesionarium_url
    assert_response :success
  end
  test "should create concesionarium" do
    assert_difference("Concesionarium.count") do
      post concesionaria_url, params: { concesionarium: { direccion: @concesionarium.direccion, nombre: @concesionarium.nombre, telefono: @concesionarium.telefono } }
    end
  end
    assert_redirected_to concesionaria_url
end
