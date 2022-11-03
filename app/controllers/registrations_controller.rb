class RegistrationsController < ApplicationController
  def create
    response.set_header('Access-Control-Allow-Origin', '*')

    user = User.create!(
      email: params['user']['email'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )
    if user
      session[:user_id] = user.id
      render json: {
        status: 'created',
        user:
      }
    else
      render json: { status: 500 }
    end
  end
end
