class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
    @items = Item.all
  end

  def show
    @gallery = Gallery.find(params[:id])
    @items = @gallery.items.all
  end
end
