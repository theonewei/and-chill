import React from 'react'
import ReactPlayer from 'react-player';
import { withRouter } from 'react-router';


class VideoSpotlight extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      playing: true,
      video: true
    }
    this._onMouseEnter = this._onMouseEnter.bind(this)
    this._onMouseExit = this._onMouseExit.bind(this)
    this._onEnded = this._onEnded.bind(this)
    this._onClick = this._onClick.bind(this)
  }

  _onMouseEnter(){
    this.setState({playing: true})
  }

  _onMouseExit(){
    this.setState({playing: false})
  }

  _onEnded(){
    this.setState({video: false})
  }

  _onClick(){
    this.props.history.push(`/videos/${this.props.video.id}`)
  }

  render() {
    if (!this.props.video) {
      return null;
    }

    const imgUrl = 'https://www.coolgenerator.com/Data/Textdesign/202107/f530d748e96b9379443bfa9661b8eade.png'

    const info = "When a father who tries to stop his daughter's immature tech-millionaire boyfriend from asking her to marry him."

    const item = this.state.video ? (
      <div id='spotlight'>
        <ReactPlayer 
        playing={this.state.playing} 
        url={this.props.video.clipUrl}
        onMouseEnter={this._onMouseEnter}
        onMouseLeave={this._onMouseExit}
        onEnded={this._onEnded}
        width='120%'
        height='120%'
        className='spotlight-player'
        />
        <div id='spotlight-overlay'>
          <p id='spotlight-logo'>WHY HIM?</p>
          <p id='spotlight-info'>{info}</p>
          <button onClick={this._onClick}>▶  Play</button>
        </div>
      </div>
    ) : (
      <img src={this.props.video.imageUrl}/>
    )
    return (
      <>
        {item}
      </>
    );
  }

}
export default withRouter(VideoSpotlight)