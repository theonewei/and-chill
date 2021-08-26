import React from 'react'
import NavBarContainer from '../navbar/NavBarContainer'
import VideoItemContainer from '../videos/VideoItemContainer'

class MyList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount(){
    this.props.fetchMyList()
  }

  render() {
    const videos = Object.values(this.props.videos).map(video => {
      return <li key={video.id}><VideoItemContainer video={video} /></li>;
    });
    return (<div id='my-list-page'>
      <NavBarContainer />
      <ul id='my-video-index'>
        {videos}
      </ul>
    </div>);
  }

}

export default MyList