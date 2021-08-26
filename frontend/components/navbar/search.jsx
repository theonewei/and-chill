import React from 'react'
import { Link } from 'react-router-dom'

class Search extends React.Component{

  constructor(props){
    super(props)
    this.state = {
      clicked: false,
      inputValue: ''
    }
    this._toggleSearch = this._toggleSearch.bind(this)
    this._handleInput = this._handleInput.bind(this)
  }

  _toggleSearch(){
    this.setState({clicked: !this.state.clicked})
  }

  _handleInput(e){
    this.setState({inputValue: e.target.value})
  }

  _removeDuplicatesFromVideos(){
    let seen = new Set()
    let result = []
    for(let video of Object.values(this.props.videos)){
      if(!seen.has(video.name)){
        seen.add(video.name)
        result.push(video)
      }
    }
    return result
  }

  render(){

    const symbol = (
    <div 
    id='search-icon'
    className='search-icon'
    onClick={this._toggleSearch}>
      <div id='circle'/>
      <div id='handle'/>
    </div>)

    const search = this.state.clicked ? (
      <div id='search-input-open'>
        {symbol}
        <input
        type="text"
        onChange={this._handleInput}
        value={this.state.inputValue} />
        <div>{searchResults}</div>
      </div>
    ) : (
      <div id='search-input-closed'>
        {symbol}
      </div>
    )
    

    let searchResults = null 
    if(this.state.inputValue !== ''){
      const videos = this._removeDuplicatesFromVideos()
      const input = this.state.inputValue.toLowerCase()
      const results = videos.map((video)=>{
        if(video.name.toLowerCase().includes(input) || 
        video.info.toLowerCase().includes(input)){
          return (
            <li key={video.id}>
              <img src={video.imageUrl}/>
              <Link to={`/videos/${video.id}`}>{video.name}</Link>
            </li>
          )
        }
      })
      searchResults = (
      <ul id='search-results'>
        {results}
      </ul>)

    }
    return(
      <div id="search">
        {search}
        <div id='results-container'>{searchResults}</div>
      </div>
    )
  }
}

export default Search