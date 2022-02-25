class HwahaeCartsController < ApplicationController
  before_action :set_hwahae_cart, only: %i[ show edit update destroy ]

  # GET /hwahae_carts or /hwahae_carts.json
  def index
	@hwahae_carts = HwahaeCart.where(user_id: current_user.id)
  end

  # GET /hwahae_carts/1 or /hwahae_carts/1.json
  def show
  end

  # GET /hwahae_carts/new
  def new
    @hwahae_cart = HwahaeCart.new
	@product = Product.all
  end

  # GET /hwahae_carts/1/edit
  def edit
  end

  # POST /hwahae_carts or /hwahae_carts.json
  def create
    @hwahae_cart = HwahaeCart.new(hwahae_cart_params)

    respond_to do |format|
      if @hwahae_cart.save
        format.html { redirect_to product_path(@hwahae_cart.product_id), notice: "장바구니에 담아졌습니다." }
        format.json { render :show, status: :created, location: @hwahae_cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hwahae_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hwahae_carts/1 or /hwahae_carts/1.json
  def update
    respond_to do |format|
      if @hwahae_cart.update(hwahae_cart_params)
        format.html { redirect_to @hwahae_cart, notice: "Hwahae cart was successfully updated." }
        format.json { render :show, status: :ok, location: @hwahae_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hwahae_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwahae_carts/1 or /hwahae_carts/1.json
  def destroy
    @hwahae_cart.destroy
    respond_to do |format|
      format.html { redirect_to hwahae_carts_url, notice: "Hwahae cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hwahae_cart
      @hwahae_cart = HwahaeCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hwahae_cart_params
      params.require(:hwahae_cart).permit(:product_count, :user_id, :product_id)
    end
end
