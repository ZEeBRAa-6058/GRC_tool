class CreateGachaContents < ActiveRecord::Migration[5.2]
  def change
    create_table :gacha_contents do |t|
      t.string :rarity, null: false
      t.string :mark, null: false
      t.string :name, null: false
      t.string :how_many, null: false
      t.datetime :lucky_day, null: false, default: Time.zone.today

      t.timestamps
    end
  end
end
