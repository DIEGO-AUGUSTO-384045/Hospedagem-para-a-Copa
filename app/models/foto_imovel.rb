class FotoImovel < ActiveRecord::Base
  belongs_to:Imovel
  has_attached_file :foto, :styles => { :medium => "640x480>", :thumb => "100x100>" }
end
