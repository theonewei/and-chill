import { connect } from "react-redux";
import {createProfile,updateProfile,deleteProfile} from "../../action/profile";
import ProfileForm from "./profile_form";

const mstp = (state,ownProps) => ({
  profile: ownProps.profile,
  submitForm: ownProps.submitForm,
  cancel: ownProps.cancel
})

const mdtp = (dispatch) => ({
  createProfile: (profile)=>dispatch(createProfile(profile)),
  updateProfile: (profile)=>dispatch(updateProfile(profile)),
  deleteProfile: (profile)=>dispatch(deleteProfile(profile))
})

export default connect(mstp,mdtp)(ProfileForm)