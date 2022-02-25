class ProductReviewsController < ApplicationController
  before_action :set_product_review, only: %i[ show edit update destroy ]

  # GET /product_reviews or /product_reviews.json
  def index
	@products = Product.all
    @product_reviews = ProductReview.all
	@product_reviews = ProductReview.where(user_id: current_user.id)
  end

  # GET /product_reviews/1 or /product_reviews/1.json
  def show  
	@products = Product.where(product_review_id: @product_id)  
  end

  # GET /product_reviews/new
  def new
    @product_review = ProductReview.new
  end

  # GET /product_reviews/1/edit
  def edit
  end

  # POST /product_reviews or /product_reviews.json
  def create
    @product_review = ProductReview.new(product_review_params)

    respond_to do |format|
      if @product_review.save
        format.html { redirect_to product_path(@product_review.product_id) }
        format.json { render :show, status: :created, location: @product_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_reviews/1 or /product_reviews/1.json
  def update
    respond_to do |format|
      if @product_review.update(product_review_params)
        format.html { redirect_to @product_review, notice: "Product review was successfully updated." }
        format.json { render :show, status: :ok, location: @product_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_reviews/1 or /product_reviews/1.json
  def destroy
    @product_review.destroy
    respond_to do |format|
      format.html { redirect_to product_reviews_url, notice: "Product review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_review
      @product_review = ProductReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_review_params
      params.require(:product_review).permit(:review_comment, :product_id, :user_id)
    end
end
