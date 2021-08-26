
export const createProfile = (profile) => (
  $.ajax({
    method: 'post',
    url: '/api/profiles',
    data: {profile}
  })
)

export const updateProfile = (profile) => (
  $.ajax({
    method: 'put',
    url: `/api/profiles/${profile.id}`,
    data: {profile}
  })
)

export const requestProfiles = () => (
  $.ajax({
    method: 'get',
    url: '/api/profiles'
  })
)

export const deleteProfile = (profile) => (
  $.ajax({
    method: 'delete',
    url: `/api/profiles/${profile.id}`
  })
)

export const activateProfile = (profile) => (
  $.ajax({
    method: 'post',
    url: '/api/profile_session',
    data: {profile}
  })
)

