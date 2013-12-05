class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  # CLRF脆弱性対策の為に、サインアウトさせる
  def handle_unverified_request
    sign_out
    super
  end
end
