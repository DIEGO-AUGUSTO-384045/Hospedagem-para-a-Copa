class CreateFotoCidades < ActiveRecord::Migration
  def change
    create_table :foto_cidades do |t|
      t.text :descricao
      t.blob :imagem

      t.timestamps
    end
  end
end
