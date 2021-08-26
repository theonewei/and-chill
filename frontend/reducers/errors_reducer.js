import { combineReducers } from "redux";
import profileErrorsReducer from "./profile_errors_reducer";
import sessionErrorsReducer from "./session_errors_reducer";

const errorReducer = combineReducers({
  session_errors: sessionErrorsReducer,
  profile_errors: profileErrorsReducer
})

export default errorReducer