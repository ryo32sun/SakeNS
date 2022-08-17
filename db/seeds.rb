# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(email: ENV['admin_email'],
            password: ENV['password']
) 

# coding: utf-8
ShopGenre.create!([
  {genre: "買えるお店"},
  {genre: "飲めるお店"}
])

SakeGenre.create!([
  {genre: "日本酒"},
  {genre: "焼酎"},
  {genre: "ウイスキー"},
  {genre: "ビール・発泡酒"},
  {genre: "ワイン"},
  {genre: "果実酒"},
  {genre: "スピリッツ"},
  {genre: "リキュール"},
  {genre: "カクテル"},
  {genre: "その他"}
])