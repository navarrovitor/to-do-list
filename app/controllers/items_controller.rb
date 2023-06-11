class ItemsController < ApplicationController
    def create
        @list = List.find(params[:list_id])
        @item = Item.new(item_params)
        @item.list = @list
        if @item.save
            redirect_to list_path(@list)
        else
            render "lists/show", status: :unprocessable_entity
        end
    end
    
    private
    
    def item_params
        params.require(:item).permit(:title, :description)
    end
end
