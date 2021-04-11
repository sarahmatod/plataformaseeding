class UserChoicesController < ApplicationController

  def new
    authorize UserChoice

    last_active_collection = Collection.where(active: true).last
    @last_collection = Item.all.where(collection: last_active_collection)
    @user_voted = UserChoice.where(collection: last_active_collection, user: current_user)
  end

  def create
    authorize UserChoice
    set_user_choice

    last_active_collection = Collection.where(active: true).last
    @last_collection = Item.all.where(collection: last_active_collection)

    user_choice_params[:vote].each do |vote|
      image_code = vote.split('upload/')[1][0..-5]
      matched = @last_collection.select { |shoe| shoe.photo.key == image_code }
      voted_shoe = matched.first
      Vote.create(user_choice: @user_choice, item: Item.find(voted_shoe.id))
    end
    redirect_to thankyou_path
  end

  def show
    authorize UserChoice
    set_user_choice
  end


  private

  def set_user_choice
    @user_choice = UserChoice.find_or_create_by(user: current_user, collection: Collection.last)
  end

  def user_choice_params
    params.require(:user_choice).permit(vote: [])
  end
end

