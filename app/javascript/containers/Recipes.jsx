// import React from 'react'
// import $ from 'jquery'
//
// import Recipe from '../components/Recipe'
// import RecipeIngredient from '../components/RecipeIngredient'
// import RecipeEdit from '../components/RecipeEdit'
// import NewStep from '../components/NewStep'
// import Dish from '../components/Dish'
// import Step from '../components/Step'
//
// export default class Recipes extends React.Component {
//   constructor(props) {
//     super(props)
//
//     this.state = {
//       recipes: props.recipes
//     }
//   }
//
//
//   render() {
//     const { recipes } = this.state
//     let recipeElements = []
//
//     recipes.map((recipe, i) => {
//       recipeElements.push(
//         <Recipe
//           {...recipe}
//           index={ i }
//           key={ i }
//         />
//       )
//     })
//
//     return (
//       <div className="therecipe">
//         { recipeElements }
//       </div>
//     )
//   }
// }
