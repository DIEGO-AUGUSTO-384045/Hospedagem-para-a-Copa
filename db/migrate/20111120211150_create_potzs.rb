class CreatePotzs < ActiveRecord::Migration
  def change
    create_table :potzs do |t|
      t.integer :codigo_cupom
      t.integer :valor

      t.timestamps
    end
  end
end
