import { connect } from "react-redux";
import { errorFilter } from "../../util/selector";
import {signup,clearErrors} from './../../action/session'
import SessionForm from "./SessionForm";

const mstp = (state) => ({
  loginError: errorFilter(state,'Credentials'),
  formType: 'signup',
  emailError: errorFilter(state,'Email'),
  passwordError: errorFilter(state,'Password')
})

const mdtp = (dispatch)=>({
  processForm: user=>dispatch(signup(user)),
  clearErrors: ()=>dispatch(clearErrors())
})

export default connect(mstp,mdtp)(SessionForm)