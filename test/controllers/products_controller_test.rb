require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
   test 'render a new carro form' do
    get new_carro_path

    assert_response :success
    assert_select 'form'
   end

   test 'can delete products' do
      assert_difference('Carro.count', -1) do
         delete products_path(carros(:BMW))
      end
      assert_redirected_to products_path
      assert_equal flash[:notice], 'El producto se ha eliminado'
   end
end