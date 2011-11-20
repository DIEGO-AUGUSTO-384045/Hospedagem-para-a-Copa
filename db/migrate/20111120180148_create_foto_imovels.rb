class CreateFotoImovels < ActiveRecord::Migration
  def change
    create_table :foto_imovels do |t|
      t.text :descricao

      t.timestamps
    end
  end
  
  
  def self.up
     add_column :foto_imovels, :foto_file_name,    :string
     add_column :foto_imovels, :foto_content_type, :string
     add_column :foto_imovels, :foto_file_size,    :integer
     add_column :foto_imovels, :foto_updated_at,   :datetime
   end
   
   def self.down
     remove_column :foto_imovels, :foto_file_name
     remove_column :foto_imovels, :foto_content_type
     remove_column :foto_imovels, :foto_file_size
     remove_column :foto_imovels, :foto_updated_at
   end
  
  
  
end
