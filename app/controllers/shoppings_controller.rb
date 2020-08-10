class ShoppingsController < ApplicationController
  def index
    @shoppings = Shopping.all
    @shoppings.each do |shopping|
      shopping.thing = shopping.thing.gsub("　","")
      @i = shopping
      @i.thing = shopping.thing.split(/\R/)
    end
    @items = @i.reject(&:blank?)
  end

  def new
    @cook = Cook.find(params[:id])
    @shopping = Shopping.new
  end

  def create
    @cook = Cook.find(params[:id])
    @shopping = Shopping.new(thing: "#{@cook.recipe}", place: params[:place])
    @shopping.save
    redirect_to "/shoppings"
  end

  def destroy
    checked_data = params[:detele]
    if Shopping.destroy(checked_data)
      redirect_to "/shopping"
    else
      render "/shopping/index"
    end
  end
end
