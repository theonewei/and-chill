import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store'
import Root from './components/root'

document.addEventListener("DOMContentLoaded", ()=>{
    
    const root = document.getElementById("root")
    let _preloadedState
    if(window.current_user){
        _preloadedState={
            entities: {
                users: {[window.current_user.id]: window.current_user}
            },
            session: { id: window.current_user.id}
        }
    }
    if(window.current_profile){
        _preloadedState.session.profile = window.current_profile
    }
    window.store = configureStore(_preloadedState)
    window.state = store.getState
    window.dispatch = store.dispatch
    ReactDOM.render(<Root store={window.store}/>, root)
})