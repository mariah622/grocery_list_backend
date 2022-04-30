class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: ItemSerializer.new(items, {include: [:category]})
    end 
end
