class DateMailer < ApplicationMailer
  default from: "Acme <onboarding@resend.dev>"

  def date_summary(date, time, perfect_date, gift)
    @date = date
    @time = time
    @perfect_date = perfect_date
    @gift = gift

    mail(
        to: "tsyamardra@gmail.com",
        subject: "New Date Plan"
    )
   end
end