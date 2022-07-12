class DogsController < ApplicationController
  def create
    if authenticate_user
      dog = Dog.new(
        name: params["name"],
        age: params["age"],
        breed: params["breed"],
      )
      dog.save
    else
      render json: { error: "Users must be logged in" }
    end
  end
end
