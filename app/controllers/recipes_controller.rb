class RecipesController < ApplicationController
  load_and_authorize_resource
  before_action :set_recipe, only: [:show, :edit, :update, :destroy, :fork]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_ingredient = RecipeIngredient.new
    @step = Step.new
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def fork
    @forked_recipe = @recipe.dup
    @forked_recipe.origin_id = @recipe.id

    respond_to do |format|
      if @forked_recipe.save
        format.html { redirect_to edit_recipe_path(@forked_recipe), notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @forked_recipe }
      else
        format.html { render :new }
        format.json { render json: @forked_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to new_recipe_recipe_ingredient_path(@recipe), :controller => 'recipe_ingredients', :action => 'create', notice: 'Recipe was successfully created.' }
        # format.json { render 'steps/form', status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      # @recipe = Recipe.find(params[:id])
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:recipe_id, :title, :recipe_description, :portions, :time, :difficulty, :nutritions, :recipe_image, steps_attributes: [:recipe_id, :description, :position, :step_image], recipe_ingredients_attributes: [:recipe_id, :ingredient_id, :quantity, :measure])
    end
end
