class VotesController < ApplicationController

  def destroy
    authorize Vote
    set_vote
    @user_choice = @vote.user_choice
    @vote.delete

    redirect_to edit_user_choice_path(@user_choice)
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

end
