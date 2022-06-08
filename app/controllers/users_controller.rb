class UsersController < ApplicationController
  def index
    @users = User.all
    render 'list_of_users'
  end

  def show
    render 'posts_per_user'
  end
end
