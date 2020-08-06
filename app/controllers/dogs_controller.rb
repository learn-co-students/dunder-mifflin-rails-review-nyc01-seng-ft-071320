class DogsController < ApplicationController
  def index
    if params[:sort]
      @dogs = Dog.all.sort_by { |dog| dog.employee_count }
    else
      @dogs = Dog.all
    end
  end
  
  def show
    @dog = Dog.find(params[:id])
  end
end
