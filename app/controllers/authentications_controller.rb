class AuthenticationsController < ApplicationController

  # GET /authentications
  # GET /authentications.json
  def index
    render json: Authentication.all, status: :ok
  end


  def show
    email = params[:email]
    password = params[:password]
    authentication = User.find_by_email!(email)
    if authentication.nil?
      render json: {message: "User doesn't exist"}
      raise ActiveRecord::RecordNotFound
    end
    if authentication.password == password
      render json: {message: "Username and password are correct"}
    else
      render json: {message: "Password is incorect"}
    end
  rescue ActiveRecord::RecordNotFound => e
    render json: {message: "User doesn't exist"}, status: 404
  end


  private

  def authentication_params
    params.require(:authentication).permit(:email, :password)
  end
end
