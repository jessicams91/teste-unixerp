class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @sizes = Size.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: "Successfully created product."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Successfully updated product."
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: "Successfully destroyed product."
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
      params.require(:product)
            .permit(:name, :description,
                    colors_attributes: [:name,
                                        sizes_attributes: [:name, :quantity]
      ])
  end
end
