class ItsDateController < ApplicationController
  def index
    Resend.api_key = ENV["RESEND_API_KEY"]

    params = {
      from: "Acme <onboarding@resend.dev>",
      to: ["tsyamardra@gmail.com"],
      subject: "New Date Plan",
      html: <<~HTML
        <h2>💖 New Date Plan</h2>

        <p><strong>Date:</strong> #{session[:date]}</p>
        <p><strong>Time:</strong> #{session[:time]}</p>
        <p><strong>Perfect Date:</strong> #{session[:perfect_date]}</p>
        <p><strong>Gift:</strong> #{session[:gift]}</p>
      HTML
    }

    response = Resend::Emails.send(params)

    Rails.logger.info "Resend Response: #{response.inspect}"
    puts "Resend Response: #{response.inspect}"

    # No redirect here.
    # Rails will automatically render:
    # app/views/its_date/index.html.erb
  end
end