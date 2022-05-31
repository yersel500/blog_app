class UsersController < ApplicationController
  def index
    render 'list_of_users'
  end

  def show
    render 'post_per_user'
  end
end
