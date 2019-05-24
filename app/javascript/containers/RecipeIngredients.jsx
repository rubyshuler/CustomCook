import React from 'react'
import $ from 'jquery'

import RecipeIngredient from '../components/RecipeIngredient'

export default class RecipeIngredients extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      recipeIngredients: props.recipeIngredients
    }
  }

  render() {
    const { recipeIngredients } = this.state
    let recipeIngredientElements = []

    recipeIngredients.map((recipeIngredient, i) => {
      recipeIngredientElements.push(
        <RecipeIngredient
          {...recipeIngredient}
          index={ i }
          key={ i }
        />
      )
    })

    return (
      <div className="ingredients">
        { recipeIngredientElements }
      </div>
    )
  }
}
