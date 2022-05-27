class CreateFaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :faturas do |t|
      t.string :descricao
      t.text :image_data

      t.timestamps
    end
  end
end
