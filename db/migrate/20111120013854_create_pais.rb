class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nome, :limit => 50, :null => false

      t.timestamps
    end
  end
end
