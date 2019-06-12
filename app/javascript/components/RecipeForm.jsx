import React from "react"
import PropTypes from "prop-types"
import $ from "jquery"

class RecipeForm extends React.Component {
  constructor(props) {
    super(props)

    this.handleCategoryChange          = this.handleCategoryChange.bind(this)
    this.handleTitleChange             = this.handleTitleChange.bind(this)
    this.handleRecipeDescriptionChange = this.handleRecipeDescriptionChange.bind(this)
    this.handleNutritionsChange        = this.handleNutritionsChange.bind(this)
    this.handleTimeChange              = this.handleTimeChange.bind(this)
    this.handleDifficultyChange        = this.handleDifficultyChange.bind(this)
    this.handlePortionsChange          = this.handlePortionsChange.bind(this)
    this.renderCategoriesOptions       = this.renderCategoriesOptions.bind(this)
  }

  componentDidMount() {
    $.ajaxSetup({
      headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
    })
  }

  handleCategoryChange(e) {
    this.props.handleCategoryChange(e.target.value)
  }

  handleTitleChange(e) {
    this.props.handleTitleChange(e.target.value)
  }

  handleRecipeDescriptionChange(e) {
    this.props.handleRecipeDescriptionChange(e.target.value)
  }

  handleNutritionsChange(e) {
    this.props.handleNutritionsChange(e.target.value)
  }

  handleTimeChange(e) {
    this.props.handleTimeChange(e.target.value)
  }

  handleDifficultyChange(e) {
    this.props.handleDifficultyChange(e.target.value)
  }

  handlePortionsChange(e) {
    this.props.handlePortionsChange(e.target.value)
  }

  renderCategoriesOptions() {
    const { categories } = this.props.recipe
    console.log( 'CATEGORIES', categories );
    let categoriesOptions = []

    categories.map((category, i) => (
      categoriesOptions.push(
        <option key={ i } value={ category.id }>{category.category_name}</option>
      )
    ))

    return categoriesOptions
  }

  render () {
    return (
      <div className="form">
        <h1>Новый рецепт</h1>

        <div className="field">
          <h2>
            <select name="category" onChange={ this.handleCategoryChange }>
              {this.renderCategoriesOptions()}
            </select>
          </h2>
        </div>

        <div className="field">
          <h2>
            <input
              type="text"
              placeholder="Заголовок"
              name="title"
              value={ this.props.recipe.title }
              onChange={ this.handleTitleChange }
            />
          </h2>
        </div>

        <div className="field">
          <h2>
            <input
            type="text"
            placeholder="Описание"
            name="recipe_description"
            value={this.props.recipe.recipe_description}
            onChange={this.handleRecipeDescriptionChange}
            />
          </h2>
        </div>

        <h2>Общая информация</h2>
        <div className="info">

          <div className="field">
            <h2>
              <input
              type="number"
              placeholder="Калории"
              name="nutritions"
              value={this.props.recipe.nutritions}
              onChange={this.handleNutritionsChange}
              />
            </h2>
          </div>

          <div className="field">
            <p>
              <input
              type="number"
              placeholder="Минуты"
              name="time"
              value={this.props.recipe.time}
              onChange={this.handleTimeChange}
              />
            </p>
          </div>

          <div className="field">
            <p>
              <input
              type="text"
              placeholder="Уровень"
              name="difficulty"
              value={this.props.recipe.difficulty}
              onChange={this.handleDifficultyChange}
              />
            </p>
          </div>
        </div>

        <h2>Ингредиенты</h2>
        <div className="field">
          <p>
            <input
            type="number"
            placeholder="Порции"
            name="portions"
            value={this.props.recipe.portions}
            onChange={this.handlePortionsChange}
            />
          </p>
        </div>
      </div>
    )
  }
}

export default RecipeForm
