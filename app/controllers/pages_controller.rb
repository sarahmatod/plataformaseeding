class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: :politics

  def thankyou
  end

  def users
    @users = User.all
  end

end
