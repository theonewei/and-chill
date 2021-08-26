export const requestVideo = (video_id) => $.ajax({method: 'get', url: `/api/videos/${video_id}`})

export const requestVideos = () => $.ajax({method: 'get',url: '/api/videos'})

export const requestMyList = () => $.ajax({method: 'get',url: '/api/lists'})

export const addToMyList = (video_id) => $.ajax({method: 'post', url: '/api/lists',data: {video_id}})

export const deleteFromMyList = (video_id) => $.ajax({method: 'delete', url: `/api/lists/${video_id}`})