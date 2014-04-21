class WelcomeController < ApplicationController

  layout 'application'

  def hello
    @name = params[:name]
  end

  def thanks
    render 'shared/thank_you'
  end
end
