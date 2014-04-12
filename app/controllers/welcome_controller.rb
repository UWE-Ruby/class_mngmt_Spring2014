class WelcomeController < ApplicationController
  def hello
    @time = Time.now
    @name = params[:name]
  end
end
