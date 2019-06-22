class RecipeAttachmentsController < ApplicationController
  before_action :set_recipe_attachment, only: [:show, :edit, :update, :destroy]

  def index
    @recipe_attachments = RecipeAttachment.all
  end

  def show
  end

  def new
    @recipe_attachment = RecipeAttachment.new
  end

  def edit
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_attachment.recipe_id = @recipe.id
    @recipe_attachment = @recipe.recipe_attachment.new(step_params)

    respond_to do |format|
      if @recipe_attachment.save
        format.html { redirect_to @recipe_attachment, notice: 'Recipe attachment was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_attachment }
      else
        format.html { render :new }
        format.json { render json: @recipe_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe_attachment.update(recipe_attachment_params)
        format.html { redirect_to @recipe_attachment, notice: 'Recipe attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_attachment }
      else
        format.html { render :edit }
        format.json { render json: @recipe_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe_attachment.destroy
    respond_to do |format|
      format.html { redirect_to recipe_attachments_url, notice: 'Recipe attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_recipe_attachment
      @recipe_attachment = RecipeAttachment.find(params[:id])
    end

    def recipe_attachment_params
      params.require(:recipe_attachment).permit(:recipe_id, :recipe_images)
    end
end
