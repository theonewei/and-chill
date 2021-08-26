import React from 'react'
import { Switch,Route } from 'react-router'
import LoginFormContainer from './login_forms/LoginFormContainer'
import SignupFormContainer from './login_forms/SignupFormContainer'
import { AuthRoute, ProtectedRoute } from '../util/route_util'
import Splash from './splash/splash'
import ProfileContainer from './profiles/profile_container'
import VideoPageContainer from './videos/VideoPageContainer'
import VideoPlayerContainer from './video_player/VideoPlayerContainer'
import GenreContainer from './genres/GenreContainer'
import MyListContainer from './mylist/MyListContainer'
import UserEditFormContainer from './user/UserEditFormContainer'
import Home from './home'

const App = () => (
  <>

    <div id='app-body'>
      <Switch>
        <AuthRoute exact path='/login' component={LoginFormContainer}/>
        <AuthRoute exact path='/signup' component={SignupFormContainer}/>
        <ProtectedRoute path='/profiles' component={ProfileContainer}/>
        <ProtectedRoute exact path='/videos' component={VideoPageContainer}/>
        <ProtectedRoute exact path='/videos/:id' component={VideoPlayerContainer}/>
        <ProtectedRoute exact path='/genres/:id' component={GenreContainer}/>
        <ProtectedRoute exact path='/user' component={UserEditFormContainer}/>
        <ProtectedRoute exact path='/mylist' component={MyListContainer}/>
        <ProtectedRoute exact path='/home' component={Home}/>
        <AuthRoute path='/' component={Splash}/>
      </Switch>
    </div>
  </>
)

export default App