class Api::ProfileSessionsController < ApplicationController

  def create
    @profile = Profile.find_by(id: params[:profile][:id])
    user = User.find_by(id: @profile.user_id)
    profiles = user.profiles
    profiles.each do |profile|
      #without this next line, logging out and logging back in to select a profile toggles the profile active state instead of just setting it to false
      next if profile.id = @profile.id
      next unless profile.active
      profile.deactivate!
    end
    if @profile
      login_profile!(@profile)
      render json: @profile
    else
      render json: ["Can't find profile"], status: 403
    end
  end
  
end