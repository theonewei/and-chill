import { UPDATE_SUCCESSFUL } from "../action/session"

const savedReducer = (state = {},action)=>{
  Object.freeze(state)

  switch(action.type){
    case UPDATE_SUCCESSFUL:
      
  }
}