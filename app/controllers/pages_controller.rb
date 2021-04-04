class PagesController < ApplicationController

  def results_user
    @users = User.all
  end

  def results_item
  end

  def thankyou

  end

end
