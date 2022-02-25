class HwahaeContentsController < ApplicationController
  before_action :set_hwahae_content, only: %i[ show edit update destroy ]

  # GET /hwahae_contents or /hwahae_contents.json
  def index
    @hwahae_contents = HwahaeContent.all
  end

  # GET /hwahae_contents/1 or /hwahae_contents/1.json
  def show
	  @hwahae_comments = HwahaeComment.where(hwahae_content_id: @hwahae_content.id)
	  @hwahae_comment = HwahaeComment.new
	  @users=User.all
  end

  # GET /hwahae_contents/new
  def new
    @hwahae_content = HwahaeContent.new
  end

  # GET /hwahae_contents/1/edit
  def edit
  end

  # POST /hwahae_contents or /hwahae_contents.json
  def create
    @hwahae_content = HwahaeContent.new(hwahae_content_params)

    respond_to do |format|
      if @hwahae_content.save
        format.html { redirect_to @hwahae_content, notice: "Hwahae content was successfully created." }
        format.json { render :show, status: :created, location: @hwahae_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hwahae_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hwahae_contents/1 or /hwahae_contents/1.json
  def update
    respond_to do |format|
      if @hwahae_content.update(hwahae_content_params)
        format.html { redirect_to @hwahae_content, notice: "Hwahae content was successfully updated." }
        format.json { render :show, status: :ok, location: @hwahae_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hwahae_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwahae_contents/1 or /hwahae_contents/1.json
  def destroy
    @hwahae_content.destroy
    respond_to do |format|
      format.html { redirect_to hwahae_contents_url, notice: "Hwahae content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hwahae_content
      @hwahae_content = HwahaeContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hwahae_content_params
      params.require(:hwahae_content).permit(:content_title, :content_content, :editor_name)
    end
end
