class HomeController < ApplicationController
  def index
    @kringle = Kringle.new
    @kringle.kringlehead = User.new
  end
end
