class GiftController < ApplicationController
  def index
  end

  def save
    session[:gift] = params[:gift]

    redirect_to "/its_date/index"
  end
end