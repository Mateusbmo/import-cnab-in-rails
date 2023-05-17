class CreateOperacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :operacaos do |t|
      t.integer :tipo
      t.date :data
      t.decimal :valor
      t.string :cpf
      t.string :cartao
      t.string :hora
      t.string :dono_loja
      t.string :nome_loja

      t.timestamps
    end
  end
end
