import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import RecipeFullForm from '../containers/RecipeFullForm'

const RecipeFullFormPack = props => (
  <div>
    <RecipeFullForm {...props} />
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  const recipeForm = JSON.parse(document.getElementById('recipeForm').dataset.props)
  console.log(recipeForm);

  ReactDOM.render(
    <RecipeFullFormPack {...recipeForm} />,
    document.getElementById('recipeForm').appendChild(document.createElement('div'))
  )
})
