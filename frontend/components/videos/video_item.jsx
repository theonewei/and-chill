import React from "react";
import { withRouter } from "react-router";
import ReactPlayer from "react-player";

class VideoItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      hover: false,
      inList: Object.keys(props.myVideos).includes(String(props.video.id))
    }
    this._handleMouseEnter = this._handleMouseEnter.bind(this)
    this._handleMouseLeave = this._handleMouseLeave.bind(this)
    this._handleClick = this._handleClick.bind(this)
    this._addToList = this._addToList.bind(this)
    this._removeFromList = this._removeFromList.bind(this)
  }


  _handleMouseEnter(){
    this.setState({hover: true})
  }
  _handleMouseLeave(){
    this.setState({hover: false})
  }

  _handleClick(e){
    e.preventDefault()
    this.props.history.push(`/videos/${this.props.video.id}`)
  }

  _addToList(){
    this.setState({inList: true})
    this.props.addToList(this.props.video)
  }

  _removeFromList(){
    this.setState({inList: false})
    this.props.removeFromList(this.props.video)
  }

  render() {
    if(!this.props.video){return null}
    
    const playUrl = 'https://and-chill-seed.s3.amazonaws.com/play.png'
    const addUrl = 'https://and-chill-seed.s3.amazonaws.com/plus3.png'
    const removeUrl = 'https://and-chill-seed.s3.amazonaws.com/check3.png'
    const myListButton = this.state.inList ? (
      <img 
        className={'list-btn'} 
        onClick={this._removeFromList} 
        src={removeUrl} 
        alt='Remove from My List'/>
      ) : (
      <img 
        className={'list-btn'} 
        onClick={this._addToList} 
        src={addUrl}/>)


    const item = this.state.hover ? (
      <div className='react-player-container'>
        <ReactPlayer 
        url={this.props.video.clipUrl} 
        playing={this.state.hover}
        className='react-player'
        width='100%'
        height='100%'
        onEnded={this.handleMouseLeave}
        onClick={this._handleClick}
        />
        <div className='modal-btns'>
          <img className='list-btn' onClick={this._handleClick} src={playUrl}/>
          {myListButton}
        </div>
        <p
        className='react-player-info'
        >{this.props.video.info.slice(0,175)+'...'}</p>
      </div>
      
    ) : (
      <img 
      src={this.props.video.imageUrl}
      className='react-player-thumbnail'/>
    )

    return (
      <div
      onMouseEnter={this._handleMouseEnter}
      onMouseLeave={this._handleMouseLeave}
      className='video-item'
      >
        {item}
      </div>
    )
  }

}
export default withRouter(VideoItem)