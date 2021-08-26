import React from 'react'
import VideoItemContainer from './VideoItemContainer';

const VideoIndex = props => {
  const videos = Object.values(props.videos).map(video => {
    
    if(video.genre_id === props.genre.id){
      return (
      <li key={video.id}>
        <VideoItemContainer video={video}/>
      </li>)
    }
    return
      });
  return( 
    <div className='video-index-container'>
      <p className='video-index-title'>{props.genre.name}</p>
      <ul className='video-index'>
        {videos}
      </ul>
    </div>
      );
};

export default VideoIndex