import { combineReducers } from "redux";
import entitiesReducer from "./entities_reducer";
import errorReducer from "./errors_reducer";
import uiReducer from "./ui_reducer.js";
import sessionReducer from "./session_reducer";


// const rootReducer = combineReducers({
//   session: sessionReducer,
//   entities: entitiesReducer,
//   errors: errorReducer,
//   ui: uiReducer
// })

const rootReducer = combineReducers({
  entities: entitiesReducer,
  errors: errorReducer,
  ui: uiReducer,
  session: sessionReducer
})

export default rootReducer