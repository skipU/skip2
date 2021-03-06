class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def index
  end

  def show
    @stocks = @user.stocks
    @entries = @user.entries
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:id, :name, :birth, :school_year, :school_name, :email)
    end
end