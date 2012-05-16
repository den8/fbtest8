# -*- coding: utf-8 -*-
class Admin::BaseController < ApplicationController
  before_filter :auth_filter

  private

  def auth_filter
    raise "Not logged in" unless @current_user
  end

  def current_user
    @current_user ||= User.find(session[:admin_user_id]) if session[:admin_user_id]
  end
  
end
