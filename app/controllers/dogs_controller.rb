class DogsController < ApplicationController
    
    before_action :find_dog, only: [:show]

    def index
        @dogs = Dog.all.sort_by {|dog| -dog.employees.count}
    end

    def show
        
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

    def find_dog
        @dog = Dog.find(params[:id])
    end


end
