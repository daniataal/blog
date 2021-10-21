class UsersController < ApplicationController
  def index
    if current_user.has_role? :admin
    @users = User.order(created_at: :desc)
    else  
      redirect_to root_path, alert: "not authorized"
    end
    def initialize(*)
      super
      permit(:sign_up, keys: [:username, :email])
    end
  end
end