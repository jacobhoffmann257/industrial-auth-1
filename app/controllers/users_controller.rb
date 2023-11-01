class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]
  #before_action :ensure_user_is_authorized, only: [:show ]
  before_action { authorize(@user || User) } #This autherizes the object(stops not authorized error from pundit)
  
  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end
  end
