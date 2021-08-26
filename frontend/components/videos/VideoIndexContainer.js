import { connect } from "react-redux";
import { pushToMyList } from "../../action/video";
import { selectByGenre } from "../../util/selector";
import VideoIndex from "./video_index";

const mstp = (state,ownProps) => ({
  videos: state.entities.videos,
  genre: ownProps.genre
})

const mdtp = (dispatch) => ({
})

export default connect(mstp,mdtp)(VideoIndex)