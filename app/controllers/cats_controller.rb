class CatsController < ApplicationController
  
  def index
    cats = Cat.all
    render json: cats.as_json
  end

  def show
    cat = Cat.find_by(id: params[:id])
    render json: cat.as_json
  end

end
