class WishesController < ApplicationController
  def index
    @wishes = Wish.all
    render json: @wishes.to_json
  end

  
end
