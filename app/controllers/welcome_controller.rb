class WelcomeController < ApplicationController

  layout 'application'

  def hello
    flash[:notice] = "You are looking at my home page!"
    @name = params[:name]
  end

  def create_hello
    render text: "hello world!!"
  end

  def thanks
    render 'shared/thank_you'
  end

  def mailbox
    render 'shared/thank_you'
  end
end
