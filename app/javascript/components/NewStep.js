import React from "react"
import PropTypes from "prop-types"
class NewStep extends React.Component {
  render () {
    return (
      <form>
        <label htmlFor="description">Описание</label>
        <input type="text" name="description"/>

        <label htmlFor="position">Шаг</label>
        <input type="number" name="position"/>

        <button>Добавить шаг</button>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}

export default NewStep
