import React from "react"
import PropTypes from "prop-types"
import $ from "jquery"

class RecipeIngredientForm extends React.Component {
  constructor(props) {
    super(props)
    this.handleQuantityChange = this.handleQuantityChange.bind(this)
    this.handleMeasureChange = this.handleMeasureChange.bind(this)
    this.handleIngredientChange = this.handleIngredientChange.bind(this)
  }

  componentDidMount() {
    $.ajaxSetup({
      headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
    })
  }

  handleQuantityChange(e) {
    this.props.handleQuantityChange(e.target.value)
  }

  handleMeasureChange(e) {
    this.props.handleMeasureChange(e.target.value)
  }

  handleIngredientChange(e) {
    this.props.handleIngredientChange(e.target.value)
  }

  render () {
    return (
      <div className="form">
        <h1>Добавить ингредиент</h1>

        <div className="field">
          <h2>
            <select name="ingredient" onChange={ this.handleIngredientChange }>
            </select>
          </h2>
        </div>

        <div className="field">
          <h2>
            <input
              type="text"
              placeholder="Количество"
              name="quantity"
              value={this.props.recipe_ingredient.quantity}
              onChange={this.handleQuantityChange}
            />
          </h2>
        </div>

        <div className="field">
          <h2>
            <input
            type="text"
            placeholder="Мера"
            name="measure"
            value={this.props.recipe_ingredient.measure}
            onChange={this.handleMeasureChange}
            />
          </h2>
        </div>
      </div>
    )
  }
}

export default RecipeIngredientForm
