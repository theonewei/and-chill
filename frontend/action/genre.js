import * as GenreUtil from '../util/genre_util'

export const RECEIVE_GENRES = 'RECEIVE_GENRES'

const receiveGenres = (genres) => ({
  type: RECEIVE_GENRES,
  genres
})

export const fetchAllGenres = () => (dispatch)=> GenreUtil.fetchGenres().then(genres=>dispatch(receiveGenres(genres)))