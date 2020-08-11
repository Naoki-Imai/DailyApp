class ShoppingsController < ApplicationController
  def index
    @shoppings = Shopping.all
    # @shoppings.each do |shopping|
    #   shopping.thing = shopping.thing.gsub("　","")
    #   @i = shopping
    #   @i.thing = shopping.thing.split(/\R/)
    # end
    # @items = @i.reject(&:blank?)
  end

  def new
    @cook = Cook.find(params[:id])
    @shopping = Shopping.new
  end

  def addshopping
    @shopping = Shopping.new
  end

  def createshopping
    @shopping = Shopping.new(shopping_params)
    if @shopping.save
      redirect_to "/shoppings"
    else
      render "/shoppings/new"
    end
  end

  def create
    @cook = Cook.find(params[:id])
    @shopping = Shopping.new(thing: "#{@cook.recipe}", place: params[:place])
    @shopping.save
    redirect_to "/shoppings"
  end

  def destroy
    checked_data = params[:deletes].keys
    if Shopping.destroy(checked_data)
      redirect_to "/shoppings"
    else
      render "/shoppings/index"
    end
  end

  private
  def shopping_params
    params.require(:shopping).permit(:thing, :place)
  end

end
