class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to posts_path, notice: "You are signed up for Dossier."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to posts_path, notice: "Your user information has been updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to posts_path, notice: "This user has been deleted from Dossier."
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def load_user
    @user = User.find(params[:id])
  end
end
