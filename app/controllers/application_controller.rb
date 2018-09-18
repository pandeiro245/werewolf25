class ApplicationController < ActionController::Base
  before_action :commons
  attr_accessor :current_user

  def commons
    if cookies[:user_id].present?
      @current_user = User.find(cookies[:user_id])
    elsif params[:controller] != 'welcome'
      redirect_to :root
    end
  end
end
