import React from "react"
import PropTypes from "prop-types"
import $ from "jquery"
// import Rails from "rails-ujs"

// Rails.start()

class NewStep extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      description: ''
    }

    this.handleChange = this.handleChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  componentDidMount() {
    $.ajaxSetup({
      headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
    })
  }

  handleChange(e) {
    e.preventDefault()

    this.setState({
      description: e.target.value
    })
  }

  handleSubmit(e) {
    console.log("Test")
    e.preventDefault()

    $.ajax({
      // data: FormData,
      // headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
      data: { step: { description: this.state.description, recipe_id: '', position: '', step_image: '' } },
      // data: { step: { description: "test" }},
      dataType: "json",
      type: "POST",
      url: "recipes/:id/steps",
    })

  }

  render() {
    return (
      <form className="form" onSubmit={this.handleSubmit}>
        <label className="field" htmlFor="description">
          <div>
            <input
            type="text"
            placeholder="Описание шага"
            name="description"
            value={this.state.description}
            onChange={this.handleChange}
             />
          </div>
        </label>

        <input
          type="submit"
          value="Submit"
        />

      </form>
    )
  }
}

export default NewStep
