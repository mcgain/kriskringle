require 'debugger'

class KringlesController < ApplicationController
  def create
    user = User.new(
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation]
    )
    @kringle = Kringle.new(kringlehead: user)
    render "show"
  end
end
