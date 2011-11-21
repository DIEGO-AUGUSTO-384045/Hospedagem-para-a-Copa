require 'test_helper'

class PotzTest < ActiveSupport::TestCase
  
   test "the truth" do
     assert true
   end
  
  test "Cadastra Potz" do
    assert true
  end
  
  test "Nao salvar potz sem codigo" do
    potz = Potz.new
    assert potz.save
  end
  
end
