class PuppiesController < ApplicationController
  def index
    puppies = Puppy.all
    render json: puppies.as_json
  end

  def create
    puppies = Puppy.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    if puppies.save
      render json: puppies.as_json
    else
      render json: {errors: puppies.errors.full_messages}, status: :unprocessable_enntity
    end
  end

  def show
    the_id = params[:id]
    puppies = Puppy.find_by(id: the_id)
    render json: puppies.as_json
  end

  def update
    puppies = Puppy.find_by(id: params[:id])
    puppies.name = params[:name]
    puppies.breed = params[:breed]
    puppies.age = params[:age]
    puppies.save
    if puppies.save!
      render json: puppies.as_json
    else
      render json: {message: "there is an error!"}
    end

  end


end
