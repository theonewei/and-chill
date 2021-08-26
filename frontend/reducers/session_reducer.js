import {SET_PROFILE } from "../action/profile";
import { LOGOUT_CURRENT_USER, RECEIVE_CURRENT_USER } from "../action/session";

const _preloadedState = {current_user: null}

const sessionReducer = (state=_preloadedState, action)=>{
  Object.freeze(state)
  let newState = Object.assign({},state)
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return {id: action.user.id}
    case LOGOUT_CURRENT_USER:
      return _preloadedState
    case SET_PROFILE:
      newState.profile = action.profile
      return newState
    default:
      return state
  }
}

export default sessionReducer