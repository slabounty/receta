class RecipesController < ApplicationController
  def index
    if params[:keywords]
      @recipes = Recipe.where('name LIKE ?',"%#{params[:keywords]}%")
    else
      @recipes = []
    end
  end
end
