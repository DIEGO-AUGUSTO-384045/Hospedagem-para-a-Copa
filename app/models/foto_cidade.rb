class FotoCidade < ActiveRecord::Base
  belongs_to:Cidade
  has_attached_file :foto, :styles => { :medium => "640x480>", :thumb => "100x100>" }
end
