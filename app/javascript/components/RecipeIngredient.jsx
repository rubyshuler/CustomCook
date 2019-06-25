import React from "react"
import PropTypes from "prop-types"

export default class RecipeIngredient extends React.Component {
  constructor(props) {
    super(props)
  }

  render () {
    const { quantity, measure, ingredient } = this.props
    const { name } = ingredient

    return (
      <div className="ingredient">
        <h3>
          { quantity } { measure }
        </h3>
        <h3>
          { name }
        </h3>
      </div>
    );
  }
}
