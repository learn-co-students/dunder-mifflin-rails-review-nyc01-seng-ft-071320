class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]
    
    def index
        @employees = Employee.all
    end

    def show
    end

    def new
        @employee = Employee.new
    end
    
    def create
        @employee = Employee.create(employee_params)

        if @employee.valid?
            redirect_to employees_path(@employee)
        else
            flash[:my_errors] = @employee.errors.full_messages
            render :new
        end
    end

    def edit
    end

    def update
        @employee.update(employee_params)

        if @employee.valid?
            redirect_to employee_path
        else
            flash[:my_errors] = @employee.errors.full_messages
            render :edit
        end
        
    end

    
    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end
end
