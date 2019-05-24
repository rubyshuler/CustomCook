import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import StepForm from '../components/StepForm'

const StepFormPack = props => (
  <div>
    <StepForm stepForm={ props.stepForm } />
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  // const stepForm = JSON.parse(document.getElementById('steppForm').dataset.props)

  ReactDOM.render(
    <StepFormPack stepForm={ stepForm } />,
    document.getElementById('stepForm').appendChild(document.createElement('div'))
  )
})
