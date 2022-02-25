class HwahaeOrdersController < ApplicationController
  before_action :set_hwahae_order, only: %i[ show edit update destroy ]

  # GET /hwahae_orders or /hwahae_orders.json
  def index
	@products = Product.all
	@hwahae_orders = HwahaeOrder.where(user_id: current_user.id)
	
  end

  # GET /hwahae_orders/1 or /hwahae_orders/1.json
  def show
	  @products = Product.all
  end

  # GET /hwahae_orders/new
  def new
    @hwahae_order = HwahaeOrder.new
	@product = Product.find(id: @hwahae_order.product_id)

  end

  # GET /hwahae_orders/1/edit
  def edit
	@products = Product.all
	@products = Product.where(id: @hwahae_order.product_id)
	@users = User.where(id: current_user.id)
  end

  # POST /hwahae_orders or /hwahae_orders.json
  def create
    @hwahae_order = HwahaeOrder.new(hwahae_order_params)

    respond_to do |format|
      if @hwahae_order.save
        format.html { redirect_to edit_hwahae_order_path(@hwahae_order.id), notice: "Hwahae order was successfully created." }
        format.json { render :show, status: :created, location: @hwahae_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hwahae_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hwahae_orders/1 or /hwahae_orders/1.json
  def update
    respond_to do |format|
      if @hwahae_order.update(hwahae_order_params)
        format.html { redirect_to product_path(@hwahae_order.product_id), notice: "Hwahae order was successfully updated." }
        format.json { render :show, status: :ok, location: @hwahae_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hwahae_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwahae_orders/1 or /hwahae_orders/1.json
  def destroy
    @hwahae_order.destroy
    respond_to do |format|
      format.html { redirect_to hwahae_orders_url, notice: "Hwahae order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hwahae_order
      @hwahae_order = HwahaeOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hwahae_order_params
      params.require(:hwahae_order).permit(:order_account, :order_date, :order_type, :user_id, :product_id)
    end
end
