class ListsController < ApplicationController
  def index 
    # Instance variable @, instance variables can communicate across controller, models and views
    @list = List.new
    @lists = List.all 
     #raise @lists.inspect 
    # renders views/lists/index.html.erb
  end 

  def create 
    @list = List.new(list_params) 
    @list.save

    redirect_to list_path(@list)
  end 


  def show
    @list = List.find(params[:id])
  end 

  private 

  def list_params 
    params.require(:list).permit(:name)
  end 

end

