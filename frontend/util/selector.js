export const selectByGenre = (state,genre) => {
  let res = {}
  if(state.entities === {}){return}
  for(const video of Object.values(state.entities.videos)){
    if(video.genre_id === genre.id){
      res[video.id] = video
    }
  }
  return res
}

export const errorFilter = (state,type) => {
  for(let error of state.errors.session_errors){
    if(error.includes(type)){
      return error
    }
  }
  return
}
