class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = find_employee
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(param_settings)
        redirect_to employee_path(@employee)
    end

    def edit
        @employee = find_employee
        @dogs = Dog.all
    end

    def update
        @employee = find_employee
        @employee.update(param_settings)
        redirect_to employee_path(@employee)
    end

    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def param_settings
        params.require(:employee).permit(:title, :first_name, :last_name, :alias, :office, :img_url, :dog_id)
    end
end
