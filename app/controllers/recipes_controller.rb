class RecipesController < ApplicationController
  layout :resolve_layout
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
    @recipe_attachments = @recipe.recipe_attachments.all
    @ingredients = RecipeIngredient.all.as_json(only: [:quantity, :measure], include: { ingredient: { only: :name } }).to_json
  end

  def new
    @recipe = Recipe.new
    @recipe_attachment = @recipe.recipe_attachments.build

    @categories = Category.all.map{|c| [ c.category_name, c.id ] }
    @recipe_ingredients = RecipeIngredient.new
    @ingredient = Ingredient.all.map{|i| [ i.name, i.id ] }
    @steps = Step.new
  end

  def edit
    @categories = Category.all.map{|c| [ c.category_name, c.id ] }
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
    @recipe.category_id = params[:category_id]

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @recipe.category_id = params[:category_id]
    @recipe.recipe_attachments(params) if params[:recipe_attachments]

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
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
        params.require(:recipe).permit(:recipe_id, :title, :recipe_description, :portions, :time, :difficulty, :nutritions, :category_id, post_attachments_attributes: [:id, :post_id, :avatar], steps_attributes: [:recipe_id, :description, :position, :step_image], recipe_ingredients_attributes: [:recipe_id, :ingredient_id, :quantity, :measure])
    end


    def resolve_layout
      case action_name
      when "new", "create"
        "recipes_form"
      when "index"
        "recipes"
      else
        "application"
      end
    end
end
