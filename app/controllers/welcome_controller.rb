class WelcomeController < ApplicationController

  def index
  end

  # POST   /welcome         welcome#create
  # sign the user in
  def create
    user = User.joins(:person).where(people: {email: params[:email]}).first.try(:authenticate, params[:password])
    if user
      reset_session
      set_current_user(user)
      redirect_to(timers_path, notice: 'Signed in')
    else
      request.flash[:error] = 'You should just give up!'
      render :index
    end
  end

  def logout
    reset_session
    render :index
  end
end