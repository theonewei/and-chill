import { connect } from "react-redux";
import { fetchAllVideos, fetchMyList } from "../../action/video";
import VideoPage from "./video_page";
import { fetchAllGenres } from "../../action/genre";

const mstp=(state) => ({
  video: state.entities.videos[1],
  genres: state.entities.genres,
  profile: state.session.profile
})

const mdtp = (dispatch) => ({
  fetchAllVideos: ()=>dispatch(fetchAllVideos()),
  fetchAllGenres: ()=>dispatch(fetchAllGenres()),
  fetchMyList: ()=> dispatch(fetchMyList())
})

export default connect(mstp,mdtp)(VideoPage)