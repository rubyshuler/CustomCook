class RecipeIngredientsController < ApplicationController
  load_and_authorize_resource
  before_action :set_recipe_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @recipe_ingredients = RecipeIngredient.all
  end

  def show
  end

  def new
    @recipe_ingredient = RecipeIngredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredient = @recipe.recipe_ingredients.new(recipe_ingredient_params)
    @ingredient = Ingredient.find(params[:recipe_ingredient][:ingredient_id])

    respond_to do |format|
      if @recipe_ingredient.save
        format.html { redirect_to new_recipe_step_path(@recipe), :controller => 'steps', :action => 'create' }
        format.json { render :show, status: :created, location: @recipe_ingredient }
      else
        format.html { render :new }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe_ingredient.update(recipe_ingredient_params)
        format.html { redirect_to @recipe_ingredient, notice: 'Recipe ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to recipe_ingredients_url, notice: 'Recipe ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_ingredient
      @recipe_ingredient = RecipeIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_ingredient_params
      params.require(:recipe_ingredient).permit(:ingredient_id, :quantity, :measure, :recipe_id)
    end
end
