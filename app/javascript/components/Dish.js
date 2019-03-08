import React from "react"
import PropTypes from "prop-types"

class Dishes extends React.Component {
  render () {
    return (
      <div className="">
        <img src={ this.props.dish_image_url } />

        <p>
          { this.props.review }
        </p>
      </div>
    );
  }
}

export default Dishes
