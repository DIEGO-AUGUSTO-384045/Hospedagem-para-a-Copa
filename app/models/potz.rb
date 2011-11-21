class Potz < ActiveRecord::Base
    validate:valida_digito_verificador
    
    def valida_digito_verificador
      true
    end
end
