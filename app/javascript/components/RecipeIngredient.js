import React from "react"
import PropTypes from "prop-types"

class RecipeIngredients extends React.Component {
  render () {
    return (
      <div className="ingredients">
        <p>
          { this.props.quantity } { this.props.measure }
        </p>
        <p>
          { this.props.ingredient_id }
        </p>
      </div>
    );
  }
}

export default RecipeIngredients
