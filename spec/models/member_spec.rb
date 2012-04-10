require 'spec_helper'

describe Member do
  describe "#send_password_reset" do
    let(:member) { Factory(:member) }

    it "generates a unique password_reset_token each time" do
      member.send_password_reset
      last_token = member.password_reset_token
      member.send_password_reset
      member.password_reset_token.should_not eq(last_token)
    end

    it "saves the time the password reset was sent" do
      member.send_password_reset
      member.reload.password_reset_sent_at.should be_present
    end

    it "delivers email to user" do
      member.send_password_reset
      last_email.to.should include(member.email)
    end
  end
end