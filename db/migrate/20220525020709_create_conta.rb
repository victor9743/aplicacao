class CreateConta < ActiveRecord::Migration[6.0]
  def change
    create_table :conta do |t|
      t.string :descricao
      t.float :valorconta
      t.float :valorrecibo
      t.text :image_conta
      t.text :image_recibo

      t.timestamps
    end
  end
end
