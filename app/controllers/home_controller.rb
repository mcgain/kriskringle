class HomeController < ApplicationController
  def index
    @kringle = Kringle.new
  end
end
