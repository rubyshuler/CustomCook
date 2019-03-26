// import React from "react"
// import PropTypes from "prop-types"
// import $ from "jquery"
//
// class RecipeEdit extends React.Component {
//   constructor(props) {
//     super(props)
//
//     this.state = {
//       Title: '',
//       RecipeDescription: '',
//       Nutritions: '',
//       Time: '',
//       Difficulty: '',
//       Portions: ''
//     }
//
//     this.handleChangeTitle = this.handleChangeTitle.bind(this)
//     this.handleChangeRecipeDescription = this.handleChangeRecipeDescription.bind(this)
//     this.handleChangeNutritions = this.handleChangeNutritions.bind(this)
//     this.handleChangeTime = this.handleChangeTime.bind(this)
//     this.handleChangeDifficulty = this.handleChangeDifficulty.bind(this)
//     this.handleChangePortions = this.handleChangePortions.bind(this)
//     this.handleSubmit = this.handleSubmit.bind(this)
//   }
//
//   componentDidMount() {
//     $.ajaxSetup({
//       headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
//     })
//   }
//
//   handleChangeTitle(e) {
//     e.preventDefault()
//
//     this.setState({
//       title: e.target.value
//     })
//   }
//
//   handleChangeRecipeDescription(e) {
//     e.preventDefault()
//
//     this.setState({
//       recipedescription: e.target.value
//     })
//   }
//
//   handleChangeNutritions(e) {
//     e.preventDefault()
//
//     this.setState({
//       nutritions: e.target.value
//     })
//   }
//
//   handleChangeTime(e) {
//     e.preventDefault()
//
//     this.setState({
//       time: e.target.value
//     })
//   }
//
//   handleChangeDifficulty(e) {
//     e.preventDefault()
//
//     this.setState({
//       difficulty: e.target.value
//     })
//   }
//
//   handleChangePortions(e) {
//     e.preventDefault()
//
//     this.setState({
//       portions: e.target.value
//     })
//   }
//
//   handleSubmit(e) {
//     console.log("Test")
//     e.preventDefault()
//
//     $.ajax({
//       data: {
//         recipe: {
//           title: this.state.title,
//           recipe_description: this.state.recipedescription,
//           portions: this.state.portions,
//           time: this.state.time,
//           difficulty: this.state.difficulty,
//           nutritions: this.state.nutritions
//         }
//       },
//       dataType: "json",
//       type: "POST",
//       url: "recipes/"
//     })
//
//   }
//
//   render () {
//     return (
//       <div className="form">
//         <h1>
//           <input
//             type="text"
//             placeholder="Заголовок"
//             name="title"
//             value={this.state.title}
//             onChange={this.handleChangeTitle}
//           />
//         </h1>
//
//         <p>
//           <input
//             type="text"
//             placeholder="Описание"
//             name="recipedescription"
//             value={this.state.recipedescription}
//             onChange={this.handleChangeRecipeDescription}
//           />
//         </p>
//
//         <h2>Общая информация</h2>
//
//         <div className="info">
//           <p>
//             <input
//               type="number"
//               placeholder="Калории"
//               name="nutritions"
//               value={this.state.nutritions}
//               onChange={this.handleChangeNutritions}
//             />
//           </p>
//
//           <p>
//             <input
//               type="number"
//               placeholder="Минуты"
//               name="time"
//               value={this.state.time}
//               onChange={this.handleChangeTime}
//               />
//           </p>
//           <p>
//             <input
//               type="text"
//               placeholder="Уровень"
//               name="difficulty"
//               value={this.state.difficulty}
//               onChange={this.handleChangeDifficulty}
//             />
//           </p>
//         </div>
//
//         <h2>Ингредиенты</h2>
//
//         <p>Порции:
//           <input
//           type="number"
//           placeholder="Порции"
//           name="portions"
//           value={this.state.portions}
//           onChange={this.handleChangePortions}
//           />
//         </p>
//
//         <input
//           type="submit"
//           value="Submit"
//         />
//       </div>
//     )
//   }
// }
//
// export default RecipeEdit
