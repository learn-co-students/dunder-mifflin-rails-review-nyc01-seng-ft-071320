class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update]

    def index
        @dogs = Dog.all
    end

    def show
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def edit
    end

    def update
        @dog.update(dog_params)
        redirect_to dog_path(@dog)
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed)
    end

    def find_dog
        @dog = Dog.find(params[:id])
    end
end
