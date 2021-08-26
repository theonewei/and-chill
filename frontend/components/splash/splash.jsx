import React from 'react'
import { Link } from 'react-router-dom'
import GreetingContainer from '../greeting/greeting_container'

const Splash = ()=>{

  const backgroundImg = "https://assets.nflxext.com/ffe/siteui/vlv3/c0a32732-b033-43b3-be2a-8fee037a6146/4b723240-7bae-4ffe-96d0-91fba08c69ee/US-en-20210607-popsignuptwoweeks-perspective_alpha_website_large.jpg"

  return(
    <div className='content'>
      <img src={backgroundImg} className='splash-background-img'/>
      <img src="https://fontmeme.com/permalink/210706/513187e09aaa594f7470db6679a577a1.png" className='splash-logo'/>
      {/* <header className='banner'> */}
      <GreetingContainer/>
      {/* </header> */}
      <div className='splash-modal'>
        <div className='splash-modal-content'>
          <h1>Unlimited movies, TV shows, and more.</h1>
          <h2>Watch anywhere. Cancel anytime.</h2>
          <h3>Ready to watch?</h3>
          <Link className='greeting-btn' to='/signup'>Get Started</Link>
        </div>
      </div>
    </div>
  )
}

export default Splash