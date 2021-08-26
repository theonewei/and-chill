import { connect } from "react-redux";
import { logout } from "../../action/session";
import Greeting from "./greeting";

const mStP = (state) => {
  return {
  current_user: state.entities.users[state.session.id]
}}

const mDtP = (dispatch) => ({
  logout: ()=>dispatch(logout())
})

export default connect(mStP,mDtP)(Greeting)


