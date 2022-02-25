class RankPagesController < ApplicationController
  before_action :set_rank_page, only: %i[ show edit update destroy ]

  # GET /rank_pages or /rank_pages.json
  def index
	@products = Product.all
  end

  # GET /rank_pages/1 or /rank_pages/1.json
  def show
  end
	
  # def rank_main_page
  # @products = Product.all
  # end

  # GET /rank_pages/new
  def new
    @rank_page = RankPage.new
  end

  # GET /rank_pages/1/edit
  def edit
  end

  # POST /rank_pages or /rank_pages.json
  def create
    @rank_page = RankPage.new(rank_page_params)

    respond_to do |format|
      if @rank_page.save
        format.html { redirect_to @rank_page, notice: "Rank page was successfully created." }
        format.json { render :show, status: :created, location: @rank_page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rank_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rank_pages/1 or /rank_pages/1.json
  def update
    respond_to do |format|
      if @rank_page.update(rank_page_params)
        format.html { redirect_to @rank_page, notice: "Rank page was successfully updated." }
        format.json { render :show, status: :ok, location: @rank_page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rank_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rank_pages/1 or /rank_pages/1.json
  def destroy
    @rank_page.destroy
    respond_to do |format|
      format.html { redirect_to rank_pages_url, notice: "Rank page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rank_page
      @rank_page = RankPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rank_page_params
      params.fetch(:rank_page, {})
    end
end
