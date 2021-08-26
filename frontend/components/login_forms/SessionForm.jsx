import React from 'react'
import { Link } from 'react-router-dom'

class SessionForm extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      email: '',
      password: ''
    }
    this._handleSubmit = this._handleSubmit.bind(this)
    this._handleInput = this._handleInput.bind(this)
    this._handleClick = this._handleClick.bind(this)
    this._loginDemo = this._loginDemo.bind(this)
  }

  _handleSubmit(e){
    e.preventDefault()
    let user = Object.assign({},this.state)
    this.props.processForm(user)
      .then(()=>this.props.history.push('/profiles'))
  }

  _handleInput(type){
    return (e) => {
      this.setState({[type]: e.target.value})
    }
  }

  componentWillUnmount(){
    this.props.clearErrors()
  }

  _handleClick(){
    this.props.history.push('/')
  }

  _loginDemo(){
    this.setState({email: 'demo_user@demo.com',password: 'demouser'})
    setTimeout(()=>{
      let user = Object.assign({},this.state)
      this.props.processForm(user)
        .then(()=>this.props.history.push('/profiles'))
    },0)
  }

  render(){
    const logo = "https://fontmeme.com/permalink/210706/513187e09aaa594f7470db6679a577a1.png"
    const background_img = "https://assets.nflxext.com/ffe/siteui/vlv3/c0a32732-b033-43b3-be2a-8fee037a6146/4b723240-7bae-4ffe-96d0-91fba08c69ee/US-en-20210607-popsignuptwoweeks-perspective_alpha_website_large.jpg"
    // const errors = this.props.errors.map((error)=><p>{error}</p>)
    const emailError = <p className='error'>{this.props.emailError}</p>
    const passwordError = <p className='error'>{this.props.passwordError}</p>
    const loginError = <p className='error login'>{this.props.loginError}</p>
    const emailValid = this.props.emailError ? 'invalid' : ''
    const passwordValid = this.props.passwordError ? 'invalid' : ''

    const demoLogin = this.props.formType === 'login' ? (
      <button className='demo-btn' onClick={this._loginDemo}>Demo User</button>
    ) : null
    return(
      <div>
        <img src={background_img} className='splash-background-img'/>
        <img onClick={this._handleClick} src={logo} className='splash-logo'/>
        <div className='splash-modal'/>
        <form className='login-modal-content'>
          <h1>{this.props.formType === 'login' ? 'Sign In' : 'Sign Up'}</h1>
          <br />
          {loginError}
          <br />
          <input 
          type="text" 
          value={this.state.email} 
          onChange={this._handleInput('email')} 
          placeholder='Email'
          className={emailValid}/>
          {emailError}

          <input 
          type="password" 
          value={this.state.password} 
          onChange={this._handleInput('password')} placeholder='Password'
          className={passwordValid}
          />
          {passwordError}

          <button onClick={this._handleSubmit}>{this.props.formType === 'login' ? 'Sign In' : 'Sign Up'}</button>
          {demoLogin}
          <br />
          <p>{this.props.formType === 'login'? 'New to &Chill? ' : 'Already Have An Account?  '}</p>
          <Link to={this.props.formType === 'login' ? '/signup' : '/login'}>
            {this.props.formType === 'login' ? ' Sign Up Now' : ' Sign In'}
          </Link>
        </form>
      </div>
    )
  }
}

export default SessionForm