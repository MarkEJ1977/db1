class UsersController < ApplicationController
  def index
  @users = User.all
  end

  def new
  @user = User.new  # creates a new instance of a user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def create
    @user = User.new(params[:user])
      if @user.save
      redirect_to @user # sends back to show page for that user
   else
      render :new # sends back to new form
    end
  end
end

