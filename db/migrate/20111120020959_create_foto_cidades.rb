class CreateFotoCidades < ActiveRecord::Migration
  
  def change
    create_table :foto_cidades do |t|
      t.text :descricao, :null=>true

      t.timestamps
    end
  end
  
  def self.up
    add_column :foto_cidades, :foto_file_name,    :string
    add_column :foto_cidades, :foto_content_type, :string
    add_column :foto_cidades, :foto_file_size,    :integer
    add_column :foto_cidades, :foto_updated_at,   :datetime
  end
  
  def self.down
    remove_column :foto_cidades, :foto_file_name
    remove_column :foto_cidades, :foto_content_type
    remove_column :foto_cidades, :foto_file_size
    remove_column :foto_cidades, :foto_updated_at
  end
  
end
