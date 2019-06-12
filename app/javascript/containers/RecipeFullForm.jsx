import React from 'react'
import PropTypes from "prop-types"
import $ from 'jquery'

import RecipeForm from '../components/RecipeForm'
import RecipeIngredientForm from '../components/RecipeIngredientForm'
import StepForm from '../components/StepForm'


export default class RecipeFullForm extends React.Component {
  constructor(props) {
    super(props)
    this.handleCategoryChange = this.handleCategoryChange.bind(this)
    this.handleTitleChange = this.handleTitleChange.bind(this)
    this.handleRecipeDescriptionChange = this.handleRecipeDescriptionChange.bind(this)
    this.handleNutritionsChange = this.handleNutritionsChange.bind(this)
    this.handleTimeChange = this.handleTimeChange.bind(this)
    this.handleDifficultyChange = this.handleDifficultyChange.bind(this)
    this.handlePortionsChange = this.handlePortionsChange.bind(this)

    this.handleIngredientChange = this.handleIngredientChange.bind(this)
    this.handleQuantityChange = this.handleQuantityChange.bind(this)
    this.handleMeasureChange = this.handleMeasureChange.bind(this)

    this.handlePositionChange = this.handlePositionChange.bind(this)
    this.handleDescriptionChange = this.handleDescriptionChange.bind(this)

    this.handleSubmit = this.handleSubmit.bind(this)

    this.state = {
      recipe: {
        categories: props.recipe.categories,
        current_category: '',
        title: props.recipe.title,
        recipe_description: props.recipe.recipe_description,
        nutritions: props.recipe.nutritions,
        time: props.recipe.time,
        difficulty: props.recipe.difficulty,
        portions: props.recipe.portions,
      },
      recipe_ingredient: {
        ingredients: props.recipe_ingredient.ingredients,
        current_ingredient: '',
        quantity: props.recipe_ingredient.quantity,
        measure: props.recipe_ingredient.measure
      },
      step: {
        position: props.step.position,
        description: props.step.description
      }
    }
  }

  handleSubmit(e) {
    $.ajax({
      url: '/recipes',
      dataType: 'JSON',
      type: 'POST',
      method: 'POST',
      data: {
        recipe: {
          category_id: this.state.recipe.current_category,
          title: this.state.recipe.title,
          recipe_description: this.state.recipe.recipe_description,
          nutritions: this.state.recipe.nutritions,
          time: this.state.recipe.time,
          difficulty: this.state.recipe.difficulty,
          portions: this.state.recipe.portions,
        },
        recipe_ingredient: {
          ingredient_id: this.state.recipe_ingredient.current_ingredient,
          quantity: this.state.recipe_ingredient.quantity,
          measure: this.state.recipe_ingredient.measure
        },
        step: {
          position: this.state.step.position,
          description: this.state.step.description
        }
      },
      success: response => {
        console.log('recipe created: ', response);
      }
    })
    .done(function (data) {
      console.log("success", data, data.url);
      window.location.replace(data.url)
    })
    .fail(function () {
      console.log("error");
    })
    .always(function () {
      console.log("complete");
    })

  }

  handleCategoryChange(category) {
    let newState = this.state
    newState.recipe.current_category = category

    this.setState({
      newState
    })
  }

  handleIngredientChange(ingredient) {
    let newState = this.state
    newState.recipe_ingredient.current_ingredient = ingredient

    this.setState({
      newState
    })
  }

  handleTitleChange(title) {
    let newState = this.state
    newState.recipe.title = title

    this.setState({
      newState
    })
  }

  handleRecipeDescriptionChange(recipe_description) {
    let newState = this.state
    newState.recipe.recipe_description = recipe_description

    this.setState({
      newState
    })
  }

  handleNutritionsChange(nutritions) {
    let newState = this.state
    newState.recipe.nutritions = nutritions

    this.setState({
      newState
    })
  }

  handleTimeChange(time) {
    let newState = this.state
    newState.recipe.time = time

    this.setState({
      newState
    })
  }

  handleDifficultyChange(difficulty) {
    let newState = this.state
    newState.recipe.difficulty = difficulty

    this.setState({
      newState
    })
  }

  handlePortionsChange(portions) {
    let newState = this.state
    newState.recipe.portions = portions

    this.setState({
      newState
    })
  }

  handleQuantityChange(quantity) {
    let newState = this.state
    newState.recipe_ingredient.quantity = quantity

    this.setState({
      newState
    })
  }

  handleMeasureChange(measure) {
    let newState = this.state
    newState.recipe_ingredient.measure = measure

    this.setState({
      newState
    })
  }

  handlePositionChange(position) {
    let newState = this.state
    newState.step.position = position

    this.setState({
      newState
    })
  }

  handleDescriptionChange(description) {
    let newState = this.state
    newState.step.description = description

    this.setState({
      newState
    })
  }

  render() {
    return (
      <div className="recipeFullForm">
        <RecipeForm
          recipe={ this.state.recipe }
          handleCategoryChange={ this.handleCategoryChange }
          handleTitleChange={ this.handleTitleChange }
          handleRecipeDescriptionChange={ this.handleRecipeDescriptionChange }
          handleNutritionsChange={ this.handleNutritionsChange }
          handleTimeChange={ this.handleTimeChange }
          handleDifficultyChange={ this.handleDifficultyChange }
          handlePortionsChange={ this.handlePortionsChange }
        />

        <RecipeIngredientForm
          recipe_ingredient={ this.state.recipe_ingredient }
          handleQuantityChange={ this.handleQuantityChange }
          handleMeasureChange={ this.handleMeasureChange }
          handleIngredientChange={ this.handleIngredientChange }
        />

        <StepForm
          step={ this.state.step }
          handlePositionChange={ this.handlePositionChange }
          handleDescriptionChange={ this.handleDescriptionChange }
        />

        <input
          onClick={this.handleSubmit}
          type="submit"
          value="Submit"
        />
      </div>
    )
  }
}
