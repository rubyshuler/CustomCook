import React from "react"
import PropTypes from "prop-types"

class Steps extends React.Component {
  render () {
    return (
      <div className="step">
        <p>
          { this.props.description }
        </p>
        <img src={ this.props.step_image_url } />
      </div>
    );
  }
}

export default Steps
