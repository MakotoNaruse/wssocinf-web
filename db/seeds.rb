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
  [1, "鮭のムニエル", sake_recipe, "https://drive.google.com/file/d/1IcMeN_2uRhepimp7SwslbhKIJZ1r784B/view?usp=sharing"],
  [2, "ビーフウェリントン", beef_wellington_recipe, "https://drive.google.com/file/d/1guymDpT9Z9CF8poDtRu-pdC4fXmDwMLy/view?usp=sharing"],
  [3, "タコライス", tacorice_recipe, "https://drive.google.com/file/d/1ahJVcTqSwbHy-AvILLu2VwU3KU5S-mlW/view?usp=sharing"],
  [4, "ビーフステーキ", beef_steak_recipe, "https://drive.google.com/file/d/1wiYQ-8abTk-iJd_UYTYxYrTYyZij_cGu/view?usp=sharing"],
  [5, "青椒肉絲", chinjao_rosu_recipe, "https://drive.google.com/file/d/1VKnE6wnKdzqY3J9jwd9GAiAN3IIiWlNE/view?usp=sharing"],
  [6, "豆腐バーガー", tofu_burger, "https://drive.google.com/file/d/1HlaFcCvKSl2kv2mOvQ2uAILj3eBZeJ29/view?usp=sharing")],
  [7, "海鮮アボカドユッケ", seafood_avocado, "https://drive.google.com/file/d/1IXn4-V8ARgXmDxUKJh72YK8sJidT8hCt/view?usp=sharing"],
  [8, "ナスとチーズのベジタリアン", eggplant_cheese, "https://drive.google.com/file/d/13QrDGISnGE9BfpxVAUtSG4sErnYt93AN/view?usp=sharing"],
  [9, "ガーリックシュリンプ", garlic_shrimp, "https://drive.google.com/file/d/1AwHGWqsbVojWBTrRvW29WR1lnqLrObil/view?usp=sharing"]
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
