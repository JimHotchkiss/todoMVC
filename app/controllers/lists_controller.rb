class ListsController < ApplicationController

  def index 
    # Instance variable @, instance variables can communicate across controller, models and views
    @lists = List.all 
     #raise @lists.inspect 
    # renders views/lists/index.html.erb
  end 

  def show
    @list = List.find(params[:id])
  end 

end

