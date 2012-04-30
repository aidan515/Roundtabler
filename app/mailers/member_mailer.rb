class MemberMailer < ActionMailer::Base
  default from: "from@example.com"

  def password_reset(member)
    @member = member
    mail :to => member.email, :subject => "Password Reset"
  end
  
  def seat_request(member, host)
    @member = member
    @host = host
    mail :to => @host.email, :subject => "Booking request from #{@member.full_name}"
  end
end
