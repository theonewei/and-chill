import * as VideoUtil from '../util/video_util'

export const RECEIVE_ALL_VIDEOS = 'RECEIVE_ALL_VIDEOS'
export const RECEIVE_VIDEO = 'RECEIVE_VIDEO'
export const RECIEVE_MY_VIDEOS = 'RECEIVE_MY_VIDEOS'
export const RECIEVE_MY_VIDEO = 'RECEIVE_MY_VIDEO'
export const REMOVE_MY_VIDEO = 'REMOVE_MY_VIDEO'

const receiveAllVideos = (videos) => ({
  type: RECEIVE_ALL_VIDEOS,
  videos
})

const receiveVideo = (video) => ({
  type: RECEIVE_VIDEO,
  video
})

const receiveMyVideos = (videos) => ({
  type: RECIEVE_MY_VIDEOS,
  videos
})

const receiveMyVideo = (video) => ({
  type: RECIEVE_MY_VIDEO,
  video
})

const removeMyVideo = (video) => ({
  type: REMOVE_MY_VIDEO,
  video
})

export const fetchAllVideos = () => (dispatch) => VideoUtil.requestVideos().then(videos=>dispatch(receiveAllVideos(videos)),(err)=>console.log(err.responseText))

export const fetchVideo = (video_id) => (dispatch) => VideoUtil.requestVideo(video_id).then(video=>dispatch(receiveVideo(video)),(err)=>console.log(err.responseText))

export const fetchMyList = () => (dispatch) => VideoUtil.requestMyList().then(videos=>dispatch(receiveMyVideos(videos)),(err)=>console.log(err.responseText))

export const pushToMyList = (video) => (dispatch) => VideoUtil.addToMyList(video.id).then((video)=>dispatch(receiveMyVideo(video)),(err)=>console.log(err.responseText))

export const deleteFromMyList = (video) => (dispatch) => VideoUtil.deleteFromMyList(video.id).then(()=>dispatch(removeMyVideo(video)))
