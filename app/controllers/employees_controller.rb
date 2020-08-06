class EmployeesController < ApplicationController


    def index
        @employees = Employee.all
    end

    def show
        @employee = find_employee
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
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
        t_or_f = false
        @employee = find_employee
        Employee.all.each do |employee|
            if params[:employee][:alias] == employee.alias || params[:employee][:title] == employee.title
               t_or_f = true
            else
            end
        end
        if t_or_f  == true
            redirect_to employee_path(@employee)
        else @employee.update(param_settings)
            redirect_to employee_path(@employee)
        end
    end

    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def param_settings
        params.require(:employee).permit(:title, :first_name, :last_name, :alias, :office, :img_url, :dog_id)
    end
end
