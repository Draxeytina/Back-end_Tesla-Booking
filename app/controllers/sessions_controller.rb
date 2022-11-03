class SessionsController < ApplicationController
  include CurrentUserConcern
  def create
    response.set_header('Access-Control-Allow-Origin', '*')

    user = User
      .find_by(email: params['user']['email'])
      .try(:authenticate, params['user']['password'])
    if user
      session[:user_id] = user.id
      render json: {
        status: 'created',
        logged_in: true,
        user:
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    response.set_header('Access-Control-Allow-Origin', '*')

    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    response.set_header('Access-Control-Allow-Origin', '*')

    reset_session
    render json: { status: 200, logged_out: true }
  end
end
