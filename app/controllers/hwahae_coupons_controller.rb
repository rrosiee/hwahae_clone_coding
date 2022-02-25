class HwahaeCouponsController < ApplicationController
  before_action :set_hwahae_coupon, only: %i[ show edit update destroy ]

  # GET /hwahae_coupons or /hwahae_coupons.json
  def index
    @hwahae_coupons = HwahaeCoupon.all
	@my_coupons = HwahaeCoupon.where(user_id: current_user.id)
  end

  # GET /hwahae_coupons/1 or /hwahae_coupons/1.json
  def show
  end

  # GET /hwahae_coupons/new
  def new
    @hwahae_coupon = HwahaeCoupon.new
  end

  # GET /hwahae_coupons/1/edit
  def edit
  end

  # POST /hwahae_coupons or /hwahae_coupons.json
  def create
    @hwahae_coupon = HwahaeCoupon.new(hwahae_coupon_params)

    respond_to do |format|
      if @hwahae_coupon.save
        format.html { redirect_to @hwahae_coupon, notice: "Hwahae coupon was successfully created." }
        format.json { render :show, status: :created, location: @hwahae_coupon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hwahae_coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hwahae_coupons/1 or /hwahae_coupons/1.json
  def update
    respond_to do |format|
      if @hwahae_coupon.update(hwahae_coupon_params)
        format.html { redirect_to @hwahae_coupon, notice: "Hwahae coupon was successfully updated." }
        format.json { render :show, status: :ok, location: @hwahae_coupon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hwahae_coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwahae_coupons/1 or /hwahae_coupons/1.json
  def destroy
    @hwahae_coupon.destroy
    respond_to do |format|
      format.html { redirect_to hwahae_coupons_url, notice: "Hwahae coupon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hwahae_coupon
      @hwahae_coupon = HwahaeCoupon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hwahae_coupon_params
      params.require(:hwahae_coupon).permit(:valid_type, :sale_persent, :user_id, :couponname)
    end
end
