class InquiryMailer < ApplicationMailer
  
  default from: 'gayumaru@gmail.com'

  def received_email(inquiry)
    @inquiry = inquiry
    mail(
      to: 't.ito@gayumar.com', 
      subject: 'お問い合わせ通知's
    )
  end
end
