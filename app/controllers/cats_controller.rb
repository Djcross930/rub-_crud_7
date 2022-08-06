class CatsController < ApplicationController
  
  def index
    cats = Cat.all
    render json: cats.as_json
  end

  def show
    cat = Cat.find_by(id: params[:id])
    render json: cat.as_json
  end
  
  def create
    cat = Cat.new
    cat.name = params[:name]
    cat.species = params[:species]
    cat.age = params[:age]
    cat.save
    render json: cat.as_json
  end

  def update
    cat = Cat.find_by(id: params[:id])
    cat.name = params[:name] || cat.name
    cat.species = params[:species] || cat.species
    cat.age = params[:age] || cat.age
    cat.save
    render json: cat.as_json
  end

  def destroy
    cat = Cat.find_by(id: params[:id])
    cat.destroy
    render json: {message: "Destroyed"}
  end

end
