# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.all.destroy_all

sake_recipe="https://www.kikkoman.co.jp/homecook/search/recipe/00004684/index.html"


beef_wellington_recipe=<<EOS
1.
  190度のオーブンでお肉の表面全てに焦げ目をつけて、火から下ろす
2.
  マッシュルーム、たまねぎ、ニンニク、タイム、塩こしょうを、フードプロセッサーに入れて細かくする。 
3.
  どろどろになったらフライパンで炒め、水気を取る。火から下ろして冷ます。
4.
  サランラップの上に生ハムを広げ、その上にフライパンで炒めたものを伸ばす。冷めたお肉をおいて巻き、20分寝かす。その間に、パイ生地をお肉全体に巻ける位に伸ばす。
5.
  20分寝かしたものを、さらに冷蔵庫で10分寝かす。 焼く前に卵黄を塗って、ナイフで柄を入れる。
6.
  35分～40分程焼く。コンガリに焼く。

URL : https://cookpad.com/recipe/1316592
EOS

tacorice_recipe=<<EOS
1.
  タコミートを作る。フライパンにオリーブ油大さじ1+1/2を熱し、玉ねぎ、にんにくを強めの中火で炒める。
2.
  しんなりしたらひき肉を加え、ポロポロになったらチリパウダーを加えてなじませる。
3.
  酒、砂糖、しょうゆ、ウスターソース、トマトケチャップ、塩、こしょうを加え、汁気がほぼなくなるまで炒める。これにてタコミートは完成。
4.
  トマトは1cm角に切り、レタスは細切りにする。アボカドは縦にぐるりと切り込みを入れて半分に割り、種と皮を除いて1cm角に切る。
5.
  器にごはんを盛り、作ったタコミートをかけ、レタス、トマト、アボカドを散らす。パルメザンチーズ、粗びき黒こしょうをふり、トルティーヤチップスを砕いて散らす。

URL : https://www.ntv.co.jp/3min/recipe/20170717/
EOS

beef_steak_recipe=<<EOS
1.
  牛肉の両面にグリルマスターブレンドを振りかけ、なじませる。
2.
  フライパンにサラダ油を熱し、なじませた牛肉を入れる。強火でこげ目がつくまで焼き、弱火で2～3分程度焼く。
3.
  裏返して好みの焼き加減に焼く。

URL : https://housefoods.jp/recipe/rcp_00022863.html
EOS

chinjao_rosu_recipe=<<EOS
1.
  お肉は細く切り、酒、塩少々で下味をつけ、おいておく。なじんだら片栗粉をまぶす。
2.
  たけのこ、ピーマンを細切りにする。
3.
  鍋にごま油を熱し、片栗粉をまぶしたお肉を入れ、炒める。色が変わったら取り出しておく。
4.
  フライパンに油を足し、細切りにした野菜をいため、火がとおったら牛肉を戻し、さらにいためる。
5.
  オイスターソース、お酒、しょうゆ、みりん、ウェイパー、砂糖をフライパンに加え、火をとおす。

URL : https://cookpad.com/recipe/525217
EOS

[
  [1, "鮭のムニエル", sake_recipe, "https://drive.google.com/file/d/1IcMeN_2uRhepimp7SwslbhKIJZ1r784B/view?usp=sharing"],
  [2, "ビーフウェリントン", beef_wellington_recipe, "https://drive.google.com/file/d/1guymDpT9Z9CF8poDtRu-pdC4fXmDwMLy/view?usp=sharing"],
  [3, "タコライス", tacorice_recipe, "https://drive.google.com/file/d/1ahJVcTqSwbHy-AvILLu2VwU3KU5S-mlW/view?usp=sharing"],
  [4, "ビーフステーキ", beef_steak_recipe, "https://drive.google.com/file/d/1wiYQ-8abTk-iJd_UYTYxYrTYyZij_cGu/view?usp=sharing" ],
  [5, "青椒肉絲", chinjao_rosu_recipe, "https://drive.google.com/file/d/1VKnE6wnKdzqY3J9jwd9GAiAN3IIiWlNE/view?usp=sharing" ]
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
