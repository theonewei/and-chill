import { connect } from "react-redux"
import { deleteFromMyList, pushToMyList } from "../../action/video"
import VideoItem from "./video_item"


const mstp = (state,ownProps) => ({
  video: ownProps.video,
  myVideos: state.entities.myVideos
})

const mdtp = (dispatch) => ({
  addToList: (video)=>dispatch(pushToMyList(video)),
  removeFromList: (video) => dispatch(deleteFromMyList(video))
})

export default connect(mstp,mdtp)(VideoItem)