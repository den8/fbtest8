class WelcomeController < BaseController
  skip_before_filter :auth_filter

  def index
  end
end
