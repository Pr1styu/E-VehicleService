class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def edit
    @user = User.new
    @user.name = @user.name
    @user.email = @user.email
  end

  def update
  end

  def forgotten
  end

  def send_forgotten
  end
end
