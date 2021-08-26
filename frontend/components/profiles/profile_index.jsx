import React from "react";
import ProfileFormContainer from "./ProfileFormContainer";

class ProfileIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      manage: false,
      form: false,
      profile: null,
      new: false,
    };
    this.handleClick = this.handleClick.bind(this);
    this.toggleManage = this.toggleManage.bind(this);
    this.cancel = this.cancel.bind(this);
    this.clickOnNew = this.clickOnNew.bind(this);
  }

  componentDidMount() {
    this.props.fetchAllProfiles();
  }

  handleClick(profile) {
    if (!this.state.manage) {
      return () => {
        this.props.activateProfile(profile);
        this.props.history.push('/videos')
      };
    } else {
      return () => {
        this.setState({ form: true, profile });
      };
    }
  }

  clickOnNew() {
    this.setState({ new: true, profile: { name: "" }, form: true });
  }

  cancel() {
    this.setState({ form: false, profile: null, new: false });
  }

  toggleManage() {
    this.setState({ manage: !this.state.manage });
  }

  render() {
    const profileImgUrl =
      "https://occ-0-444-448.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAAFHJqNUeGyz6qFesBt8U7Z_N7JqBoPCztz6BZH8Aq3TRyG6-G7e2mW1rCWsvUywSWN5mCnItuJ2xCg9cROXU4MHZhug.png?r=a41";

    const editProfileImgUrl =
      "https://cdn.discordapp.com/attachments/842428770420916236/862519512926388244/unknown.png";

    const newProfileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQabejlBIRWpzKNdFlRdFcjJsZX6Q1JPTYzGA&usqp=CAU";

    const logo = "https://fontmeme.com/permalink/210706/513187e09aaa594f7470db6679a577a1.png"

    const profiles = Object.values(this.props.profiles).map((profile) => (
      <li onClick={this.handleClick(profile)} key={profile.id} className='profile-item'>
        <img src={this.state.manage ? editProfileImgUrl : profileImgUrl} />
        <p>{profile.name}</p>
      </li>
    ));

    const toggle = this.state.manage ? (
      <button onClick={this.toggleManage} className='red-btn'>
        <p>DONE</p>
      </button>
    ) : (
      <button onClick={this.toggleManage} className='white-btn'>
        <p>MANAGE PROFILES</p>
      </button>
    );

    const addNewProfile = this.state.manage ? (
      <li onClick={this.clickOnNew} key="add-profile" className='profile-item'>
        <img src={newProfileImgUrl} />
        <p>Add Profile</p>
      </li>
    ) : null;

    if (!this.state.form) {
      return (
        <div className='profile-page'>
          <img src={logo} id='profile-logo'/>
          <div className='profile-middle-content'>

            <p id='top-title'>{this.state.manage ? "Manage Profiles:" : "Who's watching?"}</p>

            <ul className="profile-list">
              {profiles}
              {addNewProfile}
            </ul>
            
            {toggle}

          </div>
        </div>
      );
    } else {
      return (

        <div className='profile-page'>
          <ProfileFormContainer
            profile={this.state.profile}
            cancel={this.cancel}
            new={this.state.new}
          />
        </div>
      );
    }
  }
}

export default ProfileIndex;
