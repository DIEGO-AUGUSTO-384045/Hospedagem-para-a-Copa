class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.float :valor
      t.string :endereco
      t.integer :qtde_comodos
      t.references :Foto_Imovel
      t.references :Cidade

      t.timestamps
    end
    add_index :imovels, :foto_imovel_id, :unique => true
  end
end
