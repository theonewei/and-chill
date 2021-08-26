import { RECIEVE_MY_VIDEO, RECIEVE_MY_VIDEOS, REMOVE_MY_VIDEO } from "../action/video";


const myVideosReducer = (state={},action) => {
  Object.freeze(state)
  let newState = Object.assign({},state)
  switch (action.type) {
    case RECIEVE_MY_VIDEOS:
      return action.videos
    case RECIEVE_MY_VIDEO:
      newState[action.video.id] = action.video
      return newState
    case REMOVE_MY_VIDEO:
      delete newState[action.video.id]
      return newState
    default:
      return state
  }
}

export default myVideosReducer