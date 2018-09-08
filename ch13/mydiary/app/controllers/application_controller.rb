class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :count_requests_in_session

  def count_request_in_session
    session[:requests] ||= 0
    session[:requests] += 1
  end
end
