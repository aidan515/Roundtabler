require "spec_helper"

describe MemberMailer do
  describe "password_reset" do
    let(:member) { Factory(:member, :password_reset_token => "Anything") }
    let(:mail) { MemberMailer.password_reset(member) }

    it "sends user password reset url" do
      mail.subject.should eq("Password Reset")
      mail.to.should eq([member.email])
      mail.from.should eq(["from@example.com"])
      mail.body.encoded.should match(edit_password_reset_path(member.password_reset_token))
    end
  end
end
