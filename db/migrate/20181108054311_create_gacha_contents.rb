class CreateGachaContents < ActiveRecord::Migration[5.2]
  def change
    create_table :gacha_contents do |t|
      t.integer :rarity, null: false
      t.integer :mark, null: false
      t.string :name, null: false
      t.integer :how_many, null: false
      t.datetime :lucky_day, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :gacha_contents, :user_id
  end
end
