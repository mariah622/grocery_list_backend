class CategoriesController < ApplicationController
    def index
        category = Category.all
        render json: CategorySerializer.new(category, {include: [:items]})
    end 

    def create 
        category = Category.new(category_params)
        
        if item.save 
            render json: CategorySerializer.new(category)
        else
            render json: {error: "Couldn't save"}
        end
    end

    def category_params 
        params.require(:category).permit(:id, :name)
    end
end
