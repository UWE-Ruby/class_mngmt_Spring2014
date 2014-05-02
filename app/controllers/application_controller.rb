class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_title, :set_time

  private

  def set_time
    @time = Time.now
  end

  def set_title
    @title = 'Class App'
  end

end
