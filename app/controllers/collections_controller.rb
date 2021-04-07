class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]


  def show
    authorize @collection

    no_zero = @collection.items.select do |item|
      item.votes.count >= 1
    end

    @items = no_zero.sort_by { |item| item.votes.count}.reverse
  end

  def new
      @collections = Collection.all.order(created_at: :desc)
      @collection = Collection.new()
      authorize @collection
  end

  def create
    unless Collection.last == nil
    last_collection = Collection.last
    last_collection.active = false
    last_collection.save
    end

    @collection = Collection.new(collection_params)
    @collection.user = current_user
    @collection.active = false
    @collection.save

    @collection.photos.each do |photo|
      item = Item.new()
      item.name = photo.blob.filename
      item.photo = photo.key
      item.collection_id = @collection.id
      item.save!
    end

    authorize @collection

    redirect_to edit_collection_path(@collection)
  end

  def available
    @collection = Collection.last
    @collection.active = true
    @collection.save

    redirect_to root_path

    authorize @collection
  end

  def getavailable
    available
  end

  def unavailable
    @collection = Collection.last
    @collection.active = false
    @collection.save

    redirect_to root_path

    authorize @collection
  end

  def getunavailable
    unavailable
  end


  def edit
    authorize @collection

    @collections = Collection.all.order(created_at: :desc)


    @items = Item.all.where(collection: @collection)

    @items.each do |item|
      @item = item
    end

  end

  def update

    unless @collection.photos == [] || nil

    @collection.update(collection_params)

    @collection.photos.each do |photo|
      item = Item.new()
      item.name = photo.blob.filename
      item.photo = photo.key
      item.collection_id = @collection.id
      item.save!
    end
  end
      authorize @collection

      redirect_to edit_collection_path(@collection)
  end

  private

  def collection_params
    params.require(:collection).permit(:name, photos: [])
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end


end
