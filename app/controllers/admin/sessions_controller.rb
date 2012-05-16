class Admin::SessionsController < Admin::BaseController
  skip_before_filter :auth_filter, :only => [:new, :create]

  def new
  end

  def create
  end
  
end