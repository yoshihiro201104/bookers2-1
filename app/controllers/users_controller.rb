class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
    @user =  User.find(params[:id])
    @bookss = @user.books    
  end

  def edit
  end
end
