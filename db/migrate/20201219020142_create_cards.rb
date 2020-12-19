class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :category
      t.string :image
      t.string :month

      t.timestamps
    end
  end
end
