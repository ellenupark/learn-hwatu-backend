class CreateCardsPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :cards_players do |t|
      t.boolean :matched, default: false
      t.references :card, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
