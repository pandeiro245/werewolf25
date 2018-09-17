class ApplicationController < ActionController::Base
  before_action :commons
  attr_accessor :current_user

  def commons
    @current_user = cookies[:user_id] ? User.find(cookies[:user_id]) : nil
  end
end
