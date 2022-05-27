class CreateRecibos < ActiveRecord::Migration[6.0]
  def change
    create_table :recibos do |t|
      t.string :descricao
      t.text :image_data

      t.timestamps
    end
  end
end
