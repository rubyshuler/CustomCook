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
        category: props.recipe.category,
        title: props.recipe.title,
        recipe_description: props.recipe.recipe_description,
        nutritions: props.recipe.nutritions,
        time: props.recipe.time,
        difficulty: props.recipe.difficulty,
        portions: props.recipe.portions,
      },
      recipe_ingredient: [{
        ingredient: props.recipe_ingredient.ingredient,
        quantity: props.recipe_ingredient.quantity,
        measure: props.recipe_ingredient.measure
      }],
      step: [{
        position: props.step.position,
        description: props.step.description
      }]
    }
  }

  handleSubmit(e) {
    e.preventDefault()

    $.ajax({
      data: {
        recipe: {
          category: this.props.category,
          title: this.props.title,
          recipe_description: this.props.recipedescription,
          portions: this.props.portions,
          time: this.props.time,
          difficulty: this.props.difficulty,
          nutritions: this.props.nutritions,
        },
        recipe_ingredient: {
          ingredient: this.props.ingredient,
          quantity: this.props.quantity,
          measure: this.props.measure
        },
        step: {
          description: this.props.description,
          position: this.props.position
        }
      },
      dataType: "json",
      type: "POST",
      url: "recipes/"
    })

  }

  handleCategoryChange(category) {
    this.setState({
      recipe: {
        category: category
      }
    })
  }

  handleTitleChange(title) {
    this.setState({
      recipe: {
        title: title
      }
    })
  }

  handleRecipeDescriptionChange(recipe_description) {
    this.setState({
      recipe: {
        recipe_description: recipe_description
      }
    })
  }

  handleNutritionsChange(nutritions) {
    this.setState({
      recipe: {
        nutritions: nutritions
      }
    })
  }

  handleTimeChange(time) {
    this.setState({
      recipe: {
        time: time
      }
    })
  }

  handleDifficultyChange(difficulty) {
    this.setState({
      recipe: {
        difficulty: difficulty
      }
    })
  }

  handlePortionsChange(portions) {
    this.setState({
      recipe: {
        portions: portions
      }
    })
  }

  handleIngredientChange(ingredient) {
    this.setState({
      recipe_ingredient: {
        ingredient: ingredient
      }
    })
  }

  handleQuantityChange(quantity) {
    this.setState({
      recipe_ingredient: {
        quantity: quantity
      }
    })
  }

  handleMeasureChange(measure) {
    this.setState({
      recipe_ingredient: {
        measure: measure
      }
    })
  }

  handlePositionChange(position) {
    this.setState({
      step: {
        position: position
      }
    })
  }

  handleDescriptionChange(description) {
    this.setState({
      step: {
        description: description
      }
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
          onSubmit={this.handleSubmit}
          type="submit"
          value="Submit"
        />
      </div>
    )
  }
}
