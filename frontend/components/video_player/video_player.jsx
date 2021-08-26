import React from 'react'
import ReactPlayer from 'react-player'
import { Link, withRouter } from 'react-router-dom'

class VideoPlayer extends React.Component {

  constructor(props){
    super(props)
    this.state = {
      show: false,
      hover: false,
      idleTimer: null
    }
    this._hide = this._hide.bind(this)
    this._mouseMove = this._mouseMove.bind(this)
    this._setHover = this._setHover.bind(this)
    this._handleClick = this._handleClick.bind(this)
  }

  componentDidMount(){
    this.props.fetchVideo(this.props.id)
    document.addEventListener('mousemove', this._mouseMove)
  }

  _hide(){
    this.setState({show:false})
  }

  _mouseMove(){
    clearTimeout(this.state.idleTimer)
    this.setState({idleTimer: setTimeout(this._hide,3000)})
    this.setState({show: true})
  }

  _setHover(value){
    return () => {
      if(value === 'enter'){
        this.setState({hover: true})
      }else{
        this.setState({hover: false})
      }
    }
  }

  _handleClick(){
    this.props.history.push('/videos')
  }

  render(){

    if(!this.props.video){return null}

    const buttonText = this.state.hover && this.state.show ? <p id='back-text'>Back to Browse</p> : null

    const arrow = this.state.show ? <p id='back-arrow'>ᐸ</p> : null

    const videoUrl = this.props.user_id === 2 ? this.props.video.videoUrl : this.props.video.clipUrl

    return (
      <div id='video-player-page'>
        <div 
        id='back-btn'
        onClick={this._handleClick}
        onMouseEnter={this._setHover('enter')}
        onMouseLeave={this._setHover('leave')}
        >
          {arrow}
          {buttonText}
        </div>
        <ReactPlayer
          controls
          url={videoUrl}
          playing={true}
          id='video-player'
          width='100%'
          height='100%'
          
          />
      </div>
    )
  }
}

export default withRouter(VideoPlayer)