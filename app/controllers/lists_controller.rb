class ListsController < ApplicationController
    before_action :set_list, only: %i[show edit update destroy]

    def index
        @lists = List.all
        if params[:query].present?
            sql_subquery = "name @@ :query OR author @@ :query"
            @lists = @lists.where(sql_subquery, query: "%#{params[:query]}%")
        end
    end

    def show
        @item = Item.new
    end

    def new
        @list = List.new
    end
    
    def create
        @list = List.new(list_params)
        if @list.save
            redirect_to lists_path, notice: "List created successfully."
        else
            render :new
        end
    end
    
    def edit
    end
    
    def update
        @list.update(list_params)
        redirect_to list_path(@list)
    end
    
    def destroy
        @list.destroy
        redirect_to lists_path, status: :see_other
    end

    private

    def set_list
        @list = List.find(params[:id])
    end

    def list_params
        params.require(:list).permit(:name, :author)
    end
end
