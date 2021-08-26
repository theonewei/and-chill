import { RECEIVE_PROFILE_ERRORS } from "../action/profile";

const profileErrorsReducer = (state=[],action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_PROFILE_ERRORS:
      return action.errors
    default:
      return state
  }
}

export default profileErrorsReducer