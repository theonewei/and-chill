import { connect } from "react-redux";
import { errorFilter } from "../../util/selector";
import {clearErrors, login} from './../../action/session'
import SessionForm from "./SessionForm";

const mstp = (state) => ({
  loginError: errorFilter(state,'Invalid'),
  formType: 'login',
})

const mdtp = (dispatch)=>({
  processForm: user=>dispatch(login(user)),
  // loginDemo: ()=>dispatch(login({email: 'demo_user@demo.com',password: 'demouser'})),
  clearErrors: ()=>dispatch(clearErrors())
})

export default connect(mstp,mdtp)(SessionForm)