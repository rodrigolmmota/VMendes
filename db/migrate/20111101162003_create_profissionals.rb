class CreateProfissionals < ActiveRecord::Migration
  def change
    create_table :profissionals do |t|
      t.string :nome
      t.string :cpf
      t.string :tel
      t.string :cel
      t.string :contato
      t.string :tipo

      t.timestamps
    end
  end
end
