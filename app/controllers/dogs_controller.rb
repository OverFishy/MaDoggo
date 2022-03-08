class DogsController < ApplicationController
  def show
    @dogs = Dog.find(params[:id])
    @dogs = Dog.name
  end

  def new
    @dog = Dog.new
    @traits = Trait.all
    render layout: "application_barebones"
  end

  def create
    @dogs = Dog.new(dog_params)
    @dogs.user = current_user
    if @dogs.save
      redirect_to root_path, notice: 'New dog was created!'
    else
      render :new
    end
  end

  private

  def find_dog
    @dogs = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :gender, :size, :traits, description: [])
  end
end

# ARCHIVE

   # def index
   #   if params[:query].present?
   #     @ = Dog.global_search(params[:query])
   #   else
   #     @dogs = Dog.all
  #   end
# end
