class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
	@products=Product.all
    #@products = Product.find(params[:id])
	@user = User.where(user_id: current_user.id)  
	@ingredients = Ingredient.all
  end
	
  def cart
    @products = Product.all
    @cart_products=HwahaeCart.where(user_id: current_user.id)
  end

  # GET /products/1 or /products/1.json
  def show
	@product_reviews = ProductReview.where(product_id: @product.id)
	@product_review = ProductReview.new
	@hwahae_cart=HwahaeCart.new
	@hwahae_order = HwahaeOrder.new
	@users=User.all
	# @order_details=OrderDetail.all
	# @order_details=OrderDetail.new
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:product_name, :price, :sale_price, :ingredient, :product_detail, :point, :delivery_price, :category_name, :brand_name, :category_rank, :image)
    end
end
