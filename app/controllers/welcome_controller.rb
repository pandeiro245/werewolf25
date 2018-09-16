class WelcomeController < ApplicationController
  def index
    redirect_to new_workload_path if cookies[:user_id].present?
    @workload = Workload.new
  end

  def callback
    data = request.env['omniauth.auth']
    user = User.find_or_create_by(
      twitter_id: data[:uid]
    )
    user.name = data[:info].name
    user.screen_name = data[:info].nickname
    user.save
    cookies[:user_id] = user.id
    redirect_to :root
  end
end
