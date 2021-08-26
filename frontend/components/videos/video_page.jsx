import React from "react"
import VideoItem from "./video_item";
import VideoIndexContainer from "./VideoIndexContainer"
import NavBarContainer from "../navbar/NavBarContainer"
import VideoSpotlightContainer from "./VideoSpotlightContainer";

class VideoPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      scrollPosition: window.pageYOffset
    }
    this._handleScroll = this._handleScroll.bind(this)
  }

  componentDidMount(){
    this.props.fetchAllVideos()
    this.props.fetchAllGenres()
    this.props.fetchMyList()
    window.addEventListener('scroll', this._handleScroll)
  }

  _handleScroll(){
    this.setState({scrollPosition: window.pageYOffset})
  }


  render() {
    const videoIndexes = Object.values(this.props.genres).map(genre=>(
      <li key={genre.id}>
        <VideoIndexContainer 
          genre={genre} 
          toggleSpotlightPlaying={this.toggleSpotlightPlaying}/>
      </li>
    ))

    return (
      <div className='video-page'>
        <NavBarContainer scroll={this.state.scrollPosition}/>
        <VideoSpotlightContainer/>
        <div className='video-indexes-container'>
          <ul className='video-indexes'>
            {videoIndexes}
          </ul>
        </div>
      </div>);
  }

}

export default VideoPage