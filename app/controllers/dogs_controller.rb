class DogsController < ApplicationController


  def index
    @dogs = Dog.all

    if params[:sorted] == "true"
      @dogs = Dog.sort_dog
    end
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
