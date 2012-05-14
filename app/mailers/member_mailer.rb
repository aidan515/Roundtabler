class MemberMailer < ActionMailer::Base
  default from: "from@example.com"

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
  
  # def seat_request(member, host)
  #   @member = member
  #   @host = host
  #   mail :to => @host.email, :subject => "Booking request from #{@member.full_name}"
  # end
end
