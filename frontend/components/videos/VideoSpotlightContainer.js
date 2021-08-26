import { connect } from "react-redux";
import VideoSpotlight from "./video_spotlight";

const mstp = (state) => ({
  video: state.entities.videos[42]
})


export default connect(mstp)(VideoSpotlight)