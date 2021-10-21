class BlogueirasController < ApplicationController

  def new
    @blogueira = Blogueira.new()
  end

  def create
  end

  private

  def blogueira_params
    params.require(:blogueira).permit(:name, :shoe)
  end

end
