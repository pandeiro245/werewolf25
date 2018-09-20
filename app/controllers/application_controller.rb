class ApplicationController < ActionController::Base
  before_action :commons
  attr_accessor :current_user

  def commons
    if cookies[:user_id].present?
      @current_user = User.find(cookies[:user_id])
      redirect_to edit_workload_path(@current_user.workload) if @current_user.working? && !workload_edit?
    elsif !welcome?
      redirect_to :root
    end
  end

  def workload_edit?
    params[:controller] == 'workloads' && params[:action] == 'edit'
  end

  def welcome?
    params[:controller] == 'welcome'
  end
end
