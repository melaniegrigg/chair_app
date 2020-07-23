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

  def edit
    @chair = Chair.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @chair = Chair.find_by(id: params[:id])
    @chair.color = params[:color]
    @chair.weight = params[:weight]
    @chair.style = params[:style]
    @chair.legs = params[:legs]
    @chair.image = params[:image]
    @chair.save
    redirect_to "/chairs"
  end

  def destroy
    @chair = Chair.find_by(id: params[:id])
    @chair.destroy
    render 'index.html.erb'
  end

end
