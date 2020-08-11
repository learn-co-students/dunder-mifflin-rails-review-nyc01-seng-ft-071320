class DogsController < ApplicationController
 
    def index
        @dogs = Dog.all
        @pop_dogs = Dog.most_popular_dog
    end

    def show
        @dog = Dog.find(params[:id])
    end

end

