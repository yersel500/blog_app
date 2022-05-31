class UsersController < ApplicationController
  def index
    render 'list_of_users'
  end

  def show
    render 'posts_per_user'
  end
end
