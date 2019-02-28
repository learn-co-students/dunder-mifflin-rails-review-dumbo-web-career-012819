class DogsController < ApplicationController


  def index
    if params[:sorted] == "true"
      # Dog.sort_dog
      byebug
      # Dog.all.sort_by do |dog|
      #   dog.employees.length
      # end
    end
    @dogs = Dog.all
  end

  def show
    get_dog

  end

  private
  def get_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
  end

end
