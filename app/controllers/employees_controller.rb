class EmployeesController < ApplicationController

  before_action :get_employee, only: [:edit, :show, :update]

  def show

  end

  def edit

  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      redirect_to employee_path(@employee)
    else
      render :new
    end
    # @employee.dog_id = 1
    # @employee.save
    # byebug
  end

  private

  def get_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end
end
