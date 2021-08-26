import { RECEIVE_ALL_VIDEOS, RECEIVE_VIDEO } from "../action/video";


const videosReducer = (state = {},action)=>{
  Object.freeze(state)
  let newState = Object.assign({},state)
  switch (action.type) {
    case RECEIVE_VIDEO:
      newState[action.video.id] = action.video
      return newState
    case RECEIVE_ALL_VIDEOS:
      return action.videos
    default:
      return state
  }
}

export default videosReducer