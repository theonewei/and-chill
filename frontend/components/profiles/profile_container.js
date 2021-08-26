import { connect } from "react-redux";
import ProfileIndex from "./profile_index";
import { logout } from "../../action/session";
import { fetchAllProfiles, activateProfile,createProfile,updateProfile,deleteProfile } from "../../action/profile";

const mstp = (state) => ({
  profiles: state.entities.profiles
})

const mdtp = (dispatch) => ({
  activateProfile: (profile)=>dispatch(activateProfile(profile)),
  fetchAllProfiles: ()=>dispatch(fetchAllProfiles()),
  createProfile: (profile)=>dispatch(createProfile(profile)),
  updateProfile: (profile)=>dispatch(updateProfile(profile)),
  deleteProfile: (profile)=>dispatch(deleteProfile(profile)),
  logout: ()=>dispatch(logout())
})

export default connect(mstp,mdtp)(ProfileIndex)