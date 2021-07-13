class ItemsController < ApplicationController
before_action do
    authorize(Item)
  end


  def destroy
    @item = Item.find(params[:id])
    collection = @item.collection

    @item.votes.each do |vote|
      vote.delete
    end
    @item.delete

    redirect_to edit_collection_path(collection)

  end

end
