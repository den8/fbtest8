class BaseController < ApplicationController
  helper_method :current_user
  before_filter :auth_filter

  private

  def auth_filter
    raise "Not logged in" unless @current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

