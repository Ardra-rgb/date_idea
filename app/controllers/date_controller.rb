class DateController < ApplicationController
  def index
  end
end
class DateController < ApplicationController

  def index
  end

  def save
    puts params.inspect

    session[:date] = params[:selected_date]
    session[:time] = params[:selected_time]

    redirect_to "/perfect_date/index"
  end

end