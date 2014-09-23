require 'test_helper'

class UsersController < ApplicationController
# POST /users
# POST /Users.json
def create
	@user = User.new(params[:user])

	respond_to do |format|
		if @user.save
			#Tell the UserMailer to send a welcome Email after save
			UserMailer.welcome_email(@user).deliver

#class UserNotifierTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
end
