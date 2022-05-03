class CartController < ApplicationController
  include ActionView::Helpers::TextHelper

  def index 
  	@songs = Song.all 
  end

  def update
  	song = Song.find(params[:song_id])
  	@cart = Cart.new(session[:cart])
  	@cart.add_song(song.id)
  	session[:cart] = @cart.contents
  	quantity = @cart.count_of(song.id)
  	flash[:notice] = "You now have #{pluralize(quantity, "copy")} of #{song.title} in your cart."
  	redirect_to '/songs'
  end
end