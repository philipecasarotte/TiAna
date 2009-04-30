require 'test_helper'
require 'admin/users_controller'

# Re-raise errors caught by the controller.
class Admin::UsersController; def rescue_action(e) raise e end; end

class Admin::UsersControllerTest < ActionController::TestCase

  fixtures :users

  # def test_should_allow_signup
  #   assert_difference 'User.count' do
  #     create_user
  #     assert_response :redirect
  #   end
  # end
  # 
  # def test_should_require_login_on_signup
  #   assert_no_difference 'User.count' do
  #     create_user(:login => nil)
  #     assert assigns(:user).errors.on(:login)
  #     assert_response :success
  #   end
  # end
  # 
  # def test_should_require_password_on_signup
  #   assert_no_difference 'User.count' do
  #     create_user(:password => nil)
  #     assert assigns(:user).errors.on(:password)
  #     assert_response :success
  #   end
  # end
  # 
  # def test_should_require_password_confirmation_on_signup
  #   assert_no_difference 'User.count' do
  #     create_user(:password_confirmation => nil)
  #     assert assigns(:user).errors.on(:password_confirmation)
  #     assert_response :success
  #   end
  # end
  # 
  # def test_should_require_email_on_signup
  #   assert_no_difference 'User.count' do
  #     create_user(:email => nil)
  #     assert assigns(:user).errors.on(:email)
  #     assert_response :success
  #   end
  # end
  

  

  protected
    def create_user(options = {})
      post :create, :user => { :login => 'quire', :email => 'quire@example.com',
        :password => 'quire69', :password_confirmation => 'quire69' }.merge(options)
    end
end
