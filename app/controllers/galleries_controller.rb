class GalleriesController < ApplicationController
  before_action :set_gallery

  def index
    @items = Item.all
  end

  def show
    @items = @gallery.items.all
  end

  private

  def set_gallery
    @gallery = Gallery.find(1)
  end
end
