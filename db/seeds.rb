# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create([{ user_name: 'ユーザー' }, { string: 'こちらはサンプルユーザーです' }])

20.times do |index|
  GachaContent.create(rarity: 'ssr', mark: 'fire', name: "キャラ名#{index}", how_many: 'one_shot', lucky_day: Time.now, user_id: '1')
end
