import { connect } from "react-redux"
import { fetchMyList } from "../../action/video"
import MyList from "./my_list"


const mstp = (state) => ({
  videos: state.entities.myVideos,
  profile: state.session.profile
})

const mdtp = (dispatch) => ({
  fetchMyList: ()=>dispatch(fetchMyList())
})

export default connect(mstp,mdtp)(MyList)