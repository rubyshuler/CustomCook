import React from "react"
import PropTypes from "prop-types"
import $ from "jquery"

class StepForm extends React.Component {
  constructor(props) {
    super(props)

    this.handlePositionChange = this.handlePositionChange.bind(this)
    this.handleDescriptionChange = this.handleDescriptionChange.bind(this)
  }

  componentDidMount() {
    $.ajaxSetup({
      headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
    })
  }

  handlePositionChange(e) {
    this.props.handlePositionChange(e.target.value)
  }

  handleDescriptionChange(e) {
    this.props.handleDescriptionChange(e.target.value)
  }

  render () {
    return (
      <div className="form">
        <h1>Добавить шаг</h1>
        <div>
          <div className="field">
            <h2>
              <input
              type="text"
              placeholder="Номер шага"
              name="position"
              value={this.props.step.position}
              onChange={this.handlePositionChange}
              />
            </h2>
          </div>

          <div className="field">
            <h2>
              <input
              type="text"
              placeholder="Описание"
              name="description"
              value={this.props.step.description}
              onChange={this.handleDescriptionChange}
              />
            </h2>
          </div>
        </div>
      </div>
    )
  }
}

export default StepForm
