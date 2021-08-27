import React, { useRef, useState, useCallback, useEffect } from 'react';
import { Link } from 'react-router-dom'

const Search = props => {
  const [clicked, setClicked] = useState(false);
  const [inputValue, setInputValue] = useState('');

  useEffect(()=>{
    if(clicked){
      let el = document.querySelector('#search-input')
      el.focus()
    }
  },[clicked])

  const _toggleSearch = useCallback(() => {
    setClicked(!clicked);
  });

  const _handleInput = useCallback((e) => {
    setInputValue(e.target.value);
  });

  const _removeDuplicatesFromVideos = useCallback(() => {
    let seen = new Set();
    let result = [];

    for (let video of Object.values(props.videos)) {
      if (!seen.has(video.name)) {
        seen.add(video.name);
        result.push(video);
      }
    }

    return result;
  });

  const symbol = <div id='search-icon' className='search-icon' onClick={_toggleSearch}>
      <div id='circle' />
      <div id='handle' />
    </div>;
  const search = clicked ? <div id='search-input-open'>
        {symbol}
        <input type="text" 
          onChange={_handleInput} 
          onBlur={_toggleSearch}
          value={inputValue} 
          id='search-input'
          />
        <div>{searchResults}</div>
      </div> : <div id='search-input-closed'>
        {symbol}
      </div>;
  let searchResults = null;

  if (inputValue !== '') {
    const videos = _removeDuplicatesFromVideos();

    const input = inputValue.toLowerCase();
    const results = videos.map(video => {
      if (video.name.toLowerCase().includes(input) || video.info.toLowerCase().includes(input)) {
        return <li key={video.id}>
              <img src={video.imageUrl} />
              <Link to={`/videos/${video.id}`}>{video.name}</Link>
            </li>;
      }
    });
    searchResults = <ul id='search-results'>
        {results}
      </ul>;
  }

  return <div id="search">
        {search}
        <div id='results-container'>{searchResults}</div>
      </div>;
};

export default Search