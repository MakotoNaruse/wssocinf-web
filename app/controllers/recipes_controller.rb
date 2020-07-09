class RecipesController < ApplicationController

  def get_recipe
    # レシピの問い合わせ
    recipe_id = params[:recipe_id]

    if recipe_id.blank?
      render :json => { message: "Error:Please entry recipe_id", status: 9} #404
      return
    end

    recipe = Recipe.find_by(id: recipe_id)
    if recipe.present? # recipeが存在するか 
      render :json => { id: recipe.id, img_url: recipe.img_url, recipe_text: recipe.recipe_text, message: "Discovered recipe", status: 1}
    else
      render :json => { id: recipe_id, message: "recipe not found", status: 9}
    end
  end

end
