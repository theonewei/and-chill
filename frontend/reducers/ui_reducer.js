import { CLEAR_SAVED, UPDATE_SUCCESSFUL } from "../action/session";

let defaultState = {
  saved: false  
}

const uiReducer = (state = defaultState,action)=>{
  Object.freeze(state)
  let newState = Object.assign({}, state)
  switch(action.type){
    case UPDATE_SUCCESSFUL:
      newState.saved = true
      return newState
    case CLEAR_SAVED:
      newState.saved = false
      return newState
    default:
      return state
  }
}

export default uiReducer