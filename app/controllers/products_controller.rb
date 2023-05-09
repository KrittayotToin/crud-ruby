class ProductsController < ApplicationController
  def products
    @products = Product.all
  end

  # def show
  #   @products = Product.find(params[:id])
  # end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)
    # binding.pry
    respond_to do |format|
      if @products.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @products }
      else
        format.html { render :new }
        format.json { render json: @products.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def get_all_products
    render 'all_products'
    # @products = Product.all
    # render json: @products
    # render 'all_products'
  end

  # def edit
  #   @products = Product.find(params[:id])
  
  # end
  def edit
    @products = Product.find(params[:id]) 
  
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product), notice: "Product successfully updated"
    else
      render :edit
    end
  end
  
  def destroy
    @products = Product.find(params[:id])
    @products.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :price, :amount)
  end

  def product_name
    params.require(:product).permit(:product_name)
  end
end
