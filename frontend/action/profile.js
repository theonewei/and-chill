import * as ProfileUtil from '../util/profile_util'

export const RECEIVE_PROFILES = 'RECEIVE_PROFILES'
export const RECEIVE_PROFILE = 'RECEIVE_PROFILE'
export const RECEIVE_PROFILE_ERRORS = 'RECEIVE_PROFILE_ERRORS'
export const REMOVE_PROFILE = 'REMOVE_PROFILE'
export const SET_PROFILE = 'SET_PROFILE'

export const receiveProfile = (profile) => ({
  type: RECEIVE_PROFILE,
  profile
})

export const receiveUserProfiles = (profiles) => ({
  type: RECEIVE_PROFILES,
  profiles
})
 
export const receiveProfileErrors = (errors) => ({
  type: RECEIVE_PROFILE_ERRORS,
  errors
})

export const removeProfile = (profile) => ({
  type: REMOVE_PROFILE,
  profile
})

export const setProfile = (profile) => ({
  type: SET_PROFILE,
  profile
})

export const createProfile = (profile) => (dispatch) => ProfileUtil.createProfile(profile).then((response)=>dispatch(receiveProfile(response)),err=>dispatch(receiveProfileErrors(err.responseJSON)))

export const updateProfile = (profile) => (dispatch) => ProfileUtil.updateProfile(profile).then(response=>dispatch(receiveProfile(response)),err=>dispatch(receiveProfileErrors(err.responseJSON)))

export const deleteProfile = (profile) => (dispatch) =>{
  return ProfileUtil.deleteProfile(profile)
.then(()=>dispatch(removeProfile(profile)),err=>dispatch(receiveProfileErrors(err.responseJSON)))}

export const fetchAllProfiles = () => (dispatch) => ProfileUtil.requestProfiles().then(profiles=>dispatch(receiveUserProfiles(profiles)),err=>dispatch(receiveProfileErrors(err.responseJSON)))

export const activateProfile = (profile) => (dispatch) => ProfileUtil.activateProfile(profile).then(()=>dispatch(setProfile(profile)))
