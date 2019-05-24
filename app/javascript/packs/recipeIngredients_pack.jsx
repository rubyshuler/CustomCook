import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import RecipeIngredients from '../containers/RecipeIngredients'

const RecipeIngredientsPack = props => (
  <div>
    <RecipeIngredients recipeIngredients={ props.recipeIngredients } />
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  const recipeIngredients = JSON.parse(document.getElementById('recipe_ingredients').dataset.props)

  ReactDOM.render(
    <RecipeIngredientsPack recipeIngredients={ recipeIngredients }  />,
    document.getElementById('recipe_ingredients').appendChild(document.createElement('div'))
  )
})
