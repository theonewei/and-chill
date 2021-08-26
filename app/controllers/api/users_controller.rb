class Api::UsersController < ApplicationController

  def create
      @user = User.new(user_params)
      if @user.save
          login!(@user)
          render :show
      else
          render json: @user.errors.full_messages, status: 403
      end
  end

  def update
    @user = User.find_by(id: current_user.id)

    # if @user.is_password?(update_params['password'])
    #     if update_params['newPassword']==update_params['confirmPassword']
    #         @user.email = user_params['email']
    #         @user.password = update_params['newPassword'] unless update_params['newPassword'] == ''
    #         if @user.save
    #             render :show
    #         else
    #             render json: @user.errors.full_messages, status: 422
    #         end
    #     else
    #         render json: ['Passwords do not match'], status: 422
    #     end
    # else
    #     render json: ['Incorrect Password'], status: 422
    # end

    @user.errors.add(:base,'Incorrect Password') unless @user.is_password?(update_params['password'])
    @user.errors.add(:base,'Passwords do not match') unless update_params['newPassword']==update_params['confirmPassword']


    @user.email = user_params['email']
    @user.password = update_params['newPassword'] unless update_params['newPassword'] == ''
    if @user.errors.full_messages.length() == 0 && @user.save
        render :show
    else
        render json: @user.errors.full_messages, status: 422
    end

  end
  

  def user_params
      params.require(:user).permit(:email, :password)
  end

  def update_params
    params.require(:user).permit(:email,:password,:newPassword,:confirmPassword)
  end
end