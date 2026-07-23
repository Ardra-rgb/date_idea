class PerfectDateController < ApplicationController
  def index
  end

  def save
    session[:perfect_date] = params[:perfect_date]

    redirect_to "/gift/index"
  end
end