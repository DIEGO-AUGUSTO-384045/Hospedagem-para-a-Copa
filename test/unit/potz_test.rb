require 'test_helper'

class PotzTest < ActiveSupport::TestCase
  
#   test "the truth" do
#     assert true
#   end
  
#  test "Cadastra Potz" do
#    assert_equal true, true
#  end
  
  test "Valida Codigo Cupom" do
    potz = Potz.new
    assert true, @potz.valida_digito_verificador('7777777777').
  end
  
end
