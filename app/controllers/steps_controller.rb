class StepsController < ApplicationController
  load_and_authorize_resource
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new
  end

  def edit
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to @recipe, :controller => 'recipes', :action => 'show',foo: step_params}
        format.json { render :show, status: :created, location: @step }
        # format.js
      else
        format.html { render :new }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to steps_url, notice: 'Step was successfully updated.' }
        format.json { render :show, status: :ok, location: @step }
      else
        format.html { render :edit }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to steps_url, notice: 'Step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:description, :position, :step_image, :recipe_id)
    end
end
