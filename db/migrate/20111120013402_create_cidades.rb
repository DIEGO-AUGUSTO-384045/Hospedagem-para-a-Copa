class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, :limit => 50, :null => false
      t.date :data_fundacao, :null => true
      t.float :area, :null => true
      t.integer :populacao, :null => true
      t.float :altitude, :null => true
      t.float :longitude, :null => true
      t.float :latitude, :null => true
      
      t.references :Pais
      t.references :Foto_Cidade

      t.timestamps
    end
  end
end
