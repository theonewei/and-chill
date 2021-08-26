import React from "react";

class ProfileForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: this.props.profile.name,
    };

    this.handleUpdate = this.handleUpdate.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleUpdate(e) {
    this.setState({ name: e.target.value });
  }

  handleClick(type) {
    return (e) => {
      e.preventDefault();
      if (type === "submit") {
        if (this.props.new) {
          this.props.createProfile(this.state);
        } else {
          let newProfile = Object.assign({}, this.props.profile);
          newProfile.name = this.state.name;
          this.props.updateProfile(newProfile);
        }
      } else if (type === "delete") {
        this.props.deleteProfile(this.props.profile);
      }
      this.props.cancel();
    };
  }

  render() {
    const profileImgUrl =
      "https://occ-0-444-448.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAAFHJqNUeGyz6qFesBt8U7Z_N7JqBoPCztz6BZH8Aq3TRyG6-G7e2mW1rCWsvUywSWN5mCnItuJ2xCg9cROXU4MHZhug.png?r=a41";

    const logo = "https://fontmeme.com/permalink/210706/513187e09aaa594f7470db6679a577a1.png"

    const deleteButton = this.props.new ? null : (
      <button onClick={this.handleClick("delete")} className='white-btn'>DELETE PROFILE</button>
    );

    return (
      <div className="profile-page">
        <img src={logo} id='profile-logo'/>
        <form className='profile-form'>
          <p id='form-title'>{this.props.new ? 'Add Profile' : 'Edit Profile'}</p>
          <img src={profileImgUrl} />
          <input
            onChange={this.handleUpdate}
            type="text"
            value={this.state.name}
          />
          <div className='btns'>
            <button onClick={this.handleClick("submit")} className ='red-btn'>SAVE</button>
            <button onClick={this.handleClick("cancel")} className ='white-btn'>CANCEL</button>
            {deleteButton}
          </div>
        </form>
      </div>
    );
  }
}

export default ProfileForm;
