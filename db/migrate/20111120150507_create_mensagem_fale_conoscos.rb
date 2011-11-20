class CreateMensagemFaleConoscos < ActiveRecord::Migration
  def change
    create_table :mensagem_fale_conoscos do |t|
      t.string :remetente, :limit => 50, :null=>false
      t.string :email, :limit => 50, :null => false
      t.string :assunto, :limit => 40, :null => false
      t.text :mensagem, :null => false

      t.timestamps
    end
  end
end
