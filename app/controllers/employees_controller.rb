class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
        @dog = Dog.all
    end

    def show
        # @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end

    def edit
    end

    def update
        @dog = Dog.all
        @employee = Employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end

end
