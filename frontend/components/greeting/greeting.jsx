import React from 'react'
import {Link} from 'react-router-dom'

class Greeting extends React.Component {
  constructor(props){
    super(props)
  }

  render(){
    const display = this.props.current_user ? (
      <div>
        <p>Welcome, {this.props.current_user.email}</p>
        <button onClick={this.props.logout}>Logout</button>
      </div>
    ):(
      <div>
        <Link className='login-btn' to='/login'>Sign In</Link>
      </div>
    )

    return(
      <div className='banner'>
        {display}
      </div>
    )
  }
}

export default Greeting