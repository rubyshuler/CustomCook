import React from "react"

class Recipe extends React.Component {
  render () {
    return (
      <div className="therecipe">
        <h1>
          { this.props.title }
        </h1>

        <img src={ this.props.recipe_image_url } />

        <p>
         { this.props.recipe_description }
        </p>

        <h2>Общая информация</h2>
        <div className="info">
          <p> {this.props.nutritions} ккал</p>
          <p> {this.props.time} мин</p>
          <p> {this.props.difficulty} уровень</p>
        </div>

        <h2>Ингредиенты</h2>
        <p>Порции:
          {this.props.portions}
        </p>
      </div>
    )
  }
}

export default Recipe
