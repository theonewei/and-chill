import { connect } from "react-redux";
import { fetchVideo } from "../../action/video";
import VideoPlayer from "./video_player";

const mstp = (state,ownProps) => ({
  video: state.entities.videos[ownProps.match.params.id],
  id: ownProps.match.params.id,
  user_id: state.session.id
})

const mdtp = (dispatch,ownProps) => ({
  fetchVideo: ()=>dispatch(fetchVideo(ownProps.match.params.id))
  
})


export default connect(mstp,mdtp)(VideoPlayer)