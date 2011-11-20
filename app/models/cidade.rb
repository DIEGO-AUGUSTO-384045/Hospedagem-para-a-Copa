class Cidade < ActiveRecord::Base
  belongs_to:pais
  has_many:FotoCidade
end
