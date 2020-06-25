class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :img_url
      t.string :recipe_text

      t.timestamps
    end
  end
end
