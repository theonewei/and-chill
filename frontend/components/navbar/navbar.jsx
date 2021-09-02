import React from "react";
import { Link, withRouter } from "react-router-dom";
import Search from "./search";

class NavBar extends React.Component {
  constructor(props) {
    super(props);
    this._handleClick = this._handleClick.bind(this);
    this._logoClick = this._logoClick.bind(this);
    this._setProfile = this._setProfile.bind(this)
  }

  componentDidMount(){
    this.props.fetchProfiles()
    this.props.fetchAllVideos()
  }

  _handleClick(e) {
    e.preventDefault();
    this.props.logout();
  }

  _logoClick() {
    this.props.history.push("/videos");
  }

  _setProfile(profile){
    return ()=>{
      this.props.setProfile(profile)
      this.props.history.push('/home')
    }
  }

  render() {
    const logo =
      "https://fontmeme.com/permalink/210706/513187e09aaa594f7470db6679a577a1.png";
    const background = this.props.scroll === 0 ? " at-top" : "";

    const img = "https://occ-0-444-448.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAAFHJqNUeGyz6qFesBt8U7Z_N7JqBoPCztz6BZH8Aq3TRyG6-G7e2mW1rCWsvUywSWN5mCnItuJ2xCg9cROXU4MHZhug.png?r=a41"

    const profiles = Object.values(this.props.profiles).map((profile)=>{
      return (
        <li 
          key={profile.id}
          onClick={this._setProfile(profile)}
          >
          <img src={img}/>
          {profile.name}
        </li>)
    })

    return (
      <header className={"nav-bar" + background}>
        <div className="nav-bar-left">
          <img className="nav-logo" onClick={this._logoClick} src={logo} />
          <div className="nav-left-btns">
            <Link to="/videos">Home</Link>
            <Link to="/mylist">My List</Link>
            <a rel="noopener noreferrer" target='_blank' href="https://github.com/theonewei">Github</a>
            <a rel="noopener noreferrer" target='_blank' href="https://www.linkedin.com/in/isaac-wei-9945a2105/">LinkedIn</a>
            <a rel="noopener noreferrer" target='_blank' href="https://angel.co/u/isaac-wei">AngelList</a>
          </div>
        </div>

        <div className="nav-bar-right">
          <Search videos={this.props.videos}/>
          <div id='nav-right-btns'>
            {/* <Link className="nav-profiles" to="/profiles">
            Profiles
            </Link>
            <button onClick={this._handleClick}>Logout</button> */}

            <div id="dropdown">
              <div id='tri2'/>
              <img src={img}/>
              <ul id="dropdown-content">
                <div id='triangle' />
                {profiles}
                <Link to='/profiles'>Edit Profiles</Link>
                <div id='line'/>
                <Link id='account-button' to='/user'>Account</Link>
                <p onClick={this._handleClick}>Sign out of &Chill</p>
              </ul>
            </div>

          </div>
        </div>
      </header>
    );
  }
}

export default withRouter(NavBar);
