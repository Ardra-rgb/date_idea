class ItsDateController < ApplicationController
  def index
    resend = Resend::Client.new(api_key: ENV["RESEND_API_KEY"])

    resend.emails.send(
      from: "onboarding@resend.dev",
      to: "tsyamardra@gmail.com",
      subject: "New Date Plan",
      html: <<~HTML
        <h2>💖 New Date Plan</h2>

        <p><strong>Date:</strong> #{session[:date]}</p>
        <p><strong>Time:</strong> #{session[:time]}</p>
        <p><strong>Perfect Date:</strong> #{session[:perfect_date]}</p>
        <p><strong>Gift:</strong> #{session[:gift]}</p>
      HTML
    )
  end
end