require 'debugger'

class KringlesController < ApplicationController
  def create
    debuger
    foo = 1 + 1
    foo
  end
end
