class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @users = User.all

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @users }
      format.json { render json: @users }
    end
  end
end
