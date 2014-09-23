require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
	default from: "alan.t.cumiskey@gmail.com"

	def welcome_email(user)
		@user = user
		@user = "http://www.google.com"
		
  # test "the truth" do
  #   assert true
  # end
end
