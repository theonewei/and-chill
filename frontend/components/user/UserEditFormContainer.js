import { connect } from "react-redux"
import { clearErrors, clearSaved, updateUser } from "../../action/session"
import UserEditForm from "./user_edit"


const mstp = (state) => ({
  user: state.entities.users[state.session.id],
  errors: state.errors.session_errors,
  saved: state.ui.saved
})

const mdtp = (dispatch) => ({
  updateUser: (user)=>dispatch(updateUser(user)),
  clearErrors: ()=>dispatch(clearErrors()),
  clearSaved: ()=>dispatch(clearSaved())
})


export default connect(mstp,mdtp)(UserEditForm)