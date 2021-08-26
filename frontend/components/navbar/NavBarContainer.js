import { connect } from "react-redux";
import { activateProfile, fetchAllProfiles} from "../../action/profile";
import { logout } from "../../action/session";
import { fetchAllVideos } from "../../action/video";
import NavBar from "./navbar";

const mstp = (state,ownProps) => ({
  scroll: ownProps.scroll,
  profiles: state.entities.profiles,
  videos: state.entities.videos
})

const mdtp = (dispatch) => ({
  logout: ()=>dispatch(logout()),
  fetchProfiles: ()=>dispatch(fetchAllProfiles()),
  setProfile: (profile)=>dispatch(activateProfile(profile)),
  fetchAllVideos: ()=> dispatch(fetchAllVideos())
})

export default connect(mstp,mdtp)(NavBar)