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
      # create 3 trait instances
      traits = %w[playful pupper energetic]
      traits.each do |trait_name|
        trait = Trait.find_by_trait(trait_name)
        DogTrait.create(
          dog: @dogs,
          trait: trait
        )
      end
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
    params.require(:dog).permit(:name, :breed, :gender, :size, :main_photo)
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


# add trait creation logic
