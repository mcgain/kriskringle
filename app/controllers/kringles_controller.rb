require 'debugger'

class KringlesController < ApplicationController
  def create
    @kringle = Kringle.new(kringlehead: current_user)
    @kringle.add_participants(params[:kringle][:participants])
    @kringle.save!
    render "show"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
