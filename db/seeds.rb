# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.all.destroy_all

sake_recipe="https://www.kikkoman.co.jp/homecook/search/recipe/00004684/index.html"

beef_wellington_recipe="https://cookpad.com/recipe/1316592"

tacorice_recipe="https://www.ntv.co.jp/3min/recipe/20170717/"

beef_steak_recipe="https://housefoods.jp/recipe/rcp_00022863.html"

chinjao_rosu_recipe="https://cookpad.com/recipe/525217"

tofu_burger="https://oceans-nadia.com/user/22448/recipe/198463"

seafood_avocado="https://cookpad.com/recipe/2885070"

eggplant_cheese="https://cookpad.com/recipe/4628200"

garlic_shrimp="https://www.nichireifoods.co.jp/media/9876/"


[
  [1, "鮭のムニエル", sake_recipe, "https://drive.google.com/uc?id=1IcMeN_2uRhepimp7SwslbhKIJZ1r784B"],
  [2, "ビーフウェリントン", beef_wellington_recipe, "https://drive.google.com/uc?id=1guymDpT9Z9CF8poDtRu-pdC4fXmDwMLy"],
  [3, "タコライス", tacorice_recipe, "https://drive.google.com/uc?id=1ahJVcTqSwbHy-AvILLu2VwU3KU5S-mlW"],
  [4, "ビーフステーキ", beef_steak_recipe, "https://drive.google.com/uc?id=1wiYQ-8abTk-iJd_UYTYxYrTYyZij_cGu"],
  [5, "青椒肉絲", chinjao_rosu_recipe, "https://drive.google.com/uc?id=1VKnE6wnKdzqY3J9jwd9GAiAN3IIiWlNE"],
  [6, "豆腐バーガー", tofu_burger, "https://cdn-i-media.kidsna.com/resize/setting(dw=720,da=l,q=80,of=jpg)/article/7694/wmRaufALaxNUm0bcLe7rQ71CChMvkUMjdaFrodRgltsKiHZP5vT6S1Fs6coy4JWm?d=5d2d5b9f&h=c63ae4ea51e46af2ad311b1f6dee3d157a1e90e759647554ce0bce5b5c80b257"],
  [7, "海鮮アボカドユッケ", seafood_avocado, "https://kyomachi.dkdining.com/nagoya/wp-content/uploads/sites/8/2020/04/87824fbbd198d2227834cba5181045bd.jpg"],
  [8, "ナスとチーズのベジタリアン", eggplant_cheese, "https://previews.123rf.com/images/alexbaidj/alexbaidj1608/alexbaidj160800046/62955865-白い皿にスライスしたナスにチーズ-フェタチーズ、チェリー-トマト、バジルの葉、オリーブ-オイル焼き扇形のショットを閉じる%E3%80%82ベジタリアン料.jpg"],
  [9, "ガーリックシュリンプ", garlic_shrimp, "https://www.nichireifoods.co.jp/media/wp-content/uploads/2019/07/1908_01_garlic-shrimp_01.jpg"]
].each do |id, name, recipe_text, img_url|
  Recipe.create!(
    {
      id: id,
      name: name,
      recipe_text: recipe_text,
      img_url: img_url
    }
  )
end
