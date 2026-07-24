class ItsDateController < ApplicationController
  def index
    DateMailer.date_summary(
      session[:date],
      session[:time],
      session[:perfect_date],
      session[:gift]
    ).deliver_later
  end
end