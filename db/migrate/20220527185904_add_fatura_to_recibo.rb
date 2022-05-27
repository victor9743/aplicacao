class AddFaturaToRecibo < ActiveRecord::Migration[6.0]
  def change
    add_reference :recibos, :fatura, foreign_key: true
  end
end
