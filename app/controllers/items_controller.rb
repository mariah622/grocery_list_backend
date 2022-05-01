class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: ItemSerializer.new(items, {include: [:category]})
    end 

    def create 
        item = Item.new(item_params)
        
        if item.save 
            render json: ItemSerializer.new(item)
        else
            render json: {error: "Couldn't save"}
        end
    end

    def destroy 
        item = Item.find_by_id(params[:id])
        item.destroy 
        render json: {message: "Successfully deleted #{item.name}"}
    end

    def item_params 
        params.require(:item).permit(:name, :color, :description, :price, :category_id, :category_name)
    end

end
