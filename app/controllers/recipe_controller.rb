class RecipeController < ApplicationController

    def recipeInfo

        recipe = User.new
        recipe.id = 1
        img_url = "https://drive.google.com/drive/folders/1-XP1XehrnCgcTDdt_dHnFlfKOT-adcT6"
        recipe_text = "beef-stake"
        
        render :json => { id: recipe.id, img_url: img_url, recipe_text: recipe_text}

    end

end
