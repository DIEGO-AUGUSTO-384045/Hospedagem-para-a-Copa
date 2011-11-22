class Potz < ActiveRecord::Base
  validates_length_of :cupom, :is => 10
  validates_of :valida_digito_verificador
    
    
  def valida_digito_verificador cupom    
        peso = 2
        soma = 0
        vetor = converte_numero_para_vetor cupom
        
        vetor[0..8].each do |i|
          i *= peso
          soma += i
          peso++
        end
        
        resto = soma%11
        digito = 11 - resto
        
        return (digito == vetor[9]? true:false)
         
      end
      
      
      def converte_numero_para_vetor numero
        vetor = []
        while numero > 0
          vetor.unshift numero % 10
          numero /= 10
        end
        vetor
      end
    
end
