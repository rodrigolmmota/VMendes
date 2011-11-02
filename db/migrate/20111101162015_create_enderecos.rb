class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.integer :numero
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf
      t.references :cliente
      t.references :profissional

      t.timestamps
    end
    add_index :enderecos, :cliente_id
    add_index :enderecos, :profissional_id
  end
end
