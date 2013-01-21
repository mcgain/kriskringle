require 'debugger'

class KringlesController < ApplicationController
  def create
    user = User.new(user_params)
    @kringle = Kringle.new(kringlehead: user)
    render "show"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
