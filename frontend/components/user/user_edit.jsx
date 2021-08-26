import React, { useState, useCallback,useEffect } from 'react';
import { withRouter } from 'react-router-dom';
import NavBarContainer from '../navbar/NavBarContainer'

const UserEditForm = props => {
  const [email, setEmail] = useState(props.user.email);
  const [password, setPassword] = useState('');
  const [newPassword, setNewPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  useEffect(() => {
    return () => {
      props.clearErrors();
      props.clearSaved()
    };
  }, []);

  const _handleUpdate = useCallback((type) => {
    return e=> {
      switch (type) {
        case 'email':
          setEmail(e.target.value);
          return;

        case 'old password':
          setPassword(e.target.value);
          return;

        case 'new password':
          setNewPassword(e.target.value);
          return;

        case 'confirm password':
          setConfirmPassword(e.target.value);
          return;
      }
    };
  });

  const _handleSubmit = useCallback((e) => {
    e.preventDefault();
    props.updateUser({email,password,newPassword,confirmPassword});
    setTimeout(props.clearSaved,5000)
  });

  const _handleCancel = useCallback((e) => {
    e.preventDefault();
    props.history.push('/videos');
  });

  if (!props.user) {
    return null;
  }

  let oldPasswordError, confirmPasswordError, newPasswordError, emailError;
  let isValidConfirm = '',
      isValidEmail = '',
      isValidOld = '',
      isValidNew = '';

  for (const error of props.errors) {
    switch (error) {
      case 'Incorrect Password':
        oldPasswordError = <p className="error">{error}</p>;
        isValidOld = 'invalid';
        break;

      case 'Passwords do not match':
        confirmPasswordError = <p className="error">{error}</p>;
        isValidConfirm = 'invalid';
        break;

      case "Password is too short (minimum is 6 characters)":
        newPasswordError = <p className="error">{error}</p>;
        isValidNew = 'invalid';
        break;

      case 'Email is invalid':
        emailError = <p className="error">{error}</p>;
        isValidEmail = 'invalid';

      default:
        break;
    }
  }

  const savedConfirmation = props.saved ? <p id="save-confirmation">Saved Successfully</p> : null

  return (
    <div id='user-edit-page'>
      <NavBarContainer />
      <form id="user-edit-form">
        <p>Update Information</p>
        <input type="text" value={email} className={isValidEmail} onChange={_handleUpdate('email')} />
        {emailError}
        <input type='text' value={password} className={isValidOld} placeholder='Previous Password' onChange={_handleUpdate('old password')} />
        {oldPasswordError}

        <input type='password' value={newPassword} placeholder='New Password' className={isValidNew} onChange={_handleUpdate('new password')} />
        {newPasswordError}
        <input type='password' value={confirmPassword} className={isValidConfirm} placeholder='Confirm Password' onChange={_handleUpdate('confirm password')} />
        {confirmPasswordError}
        <div id='edit-form-submit'>
          <button onClick={_handleSubmit}>Save</button>
          <button onClick={_handleCancel}>Cancel</button>
        </div>
      </form>
      {savedConfirmation}
    </div>
    )
};
export default withRouter(UserEditForm)