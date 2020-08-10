class CooksController < ApplicationController
  def index
    @cooks = Cook.all
  end

  def new
    @cook = Cook.new(params[:id])
  end

  def create
    @cook = Cook.new(cook_params)
    iframe_params
    redirect_to "/cooks"
  end

  def edit
    @cook = Cook.find(params[:id])
  end

  def update
    @cook = Cook.find(params[:id])
    @cook.title = params[:cook][:title]
    @cook.recipe = params[:cook][:recipe]
    @cook.how = params[:cook][:how]
    iframe_params
    redirect_to "/cooks"
  end
  def show
    @cook = Cook.find(params[:id])
  end
  def destroy
    cook = Cook.find(params[:id])
    cook.destroy
    redirect_to "/cooks"
  end
  private
  def cook_params
    params.require(:cook).permit(:title, :recipe, :how, :iframe)
  end

  def iframe_params
    @cook.url = params[:cook][:iframe]
    url = params[:cook][:iframe]
    url = url.match(/=(.{11})/)
    url = url[1]
    @cook.iframe = url
    @cook.save
  end
end
