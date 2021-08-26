import { combineReducers } from "redux";
import genresReducer from "./genres_reducer";
import myVideosReducer from "./my_videos_reducer";
import profilesReducer from "./profile_reducer";
import usersReducer from "./users_reducer";
import videosReducer from "./videos_reducer";


const entitiesReducer = combineReducers({
  users: usersReducer,
  profiles: profilesReducer,
  videos: videosReducer,
  genres: genresReducer,
  myVideos: myVideosReducer
})

export default entitiesReducer