class ProductsController < ApplicationController
  def index
  @products = Product.all
  end

  def new
  	 @product = Product.new
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  end

def create
  	@product = Product.new(params[:product])
  	  if @product.save
      redirect_to @product # sends back to show page for that user
   else
      render :new # sends back to new form
    end
  end


end

