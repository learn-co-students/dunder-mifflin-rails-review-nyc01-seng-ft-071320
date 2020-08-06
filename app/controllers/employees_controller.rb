class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]
    
    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end

    def show
        find_employee
    end
    
    def edit
        find_employee
    end

    def update
        find_employee
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end


    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end 

end
