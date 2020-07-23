class ChairsController < ApplicationController
  def index
    @chairs = Chair.all

    render 'index.html.erb'
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @chair = Chair.new(
      color: params[:color],
      weight: params[:weight],
      legs: params[:legs],
      style: params[:style],
      image: params[:image]
    )
    @chair.save
    redirect_to "/chairs/#{@chair.id}"
  end
end
