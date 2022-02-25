class HwahaeCommentsController < ApplicationController
  before_action :set_hwahae_comment, only: %i[ show edit update destroy ]

  # GET /hwahae_comments or /hwahae_comments.json
  def index
    @hwahae_comments = HwahaeComment.all
  end

  # GET /hwahae_comments/1 or /hwahae_comments/1.json
  def show
	@hwahae_comments = HwahawComment.all
	@users = User.all
  end

  # GET /hwahae_comments/new
  def new
    @hwahae_comment = HwahaeComment.new
	@hwahae_content = HwahaeContent.all
  end

  # GET /hwahae_comments/1/edit
  def edit
  end

  # POST /hwahae_comments or /hwahae_comments.json
  def create
    @hwahae_comment = HwahaeComment.new(hwahae_comment_params)

    respond_to do |format|
      if @hwahae_comment.save
        format.html { redirect_to hwahae_content_path(@hwahae_comment.hwahae_content_id) }
        format.json { render :show, status: :created, location: @hwahae_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hwahae_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hwahae_comments/1 or /hwahae_comments/1.json
  def update
    respond_to do |format|
      if @hwahae_comment.update(hwahae_comment_params)
        format.html { redirect_to root_path, notice: "Hwahae comment was successfully updated." }
        format.json { render :show, status: :ok, location: @hwahae_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hwahae_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hwahae_comments/1 or /hwahae_comments/1.json
  def destroy
    @hwahae_comment.destroy
    respond_to do |format|
      format.html { redirect_to hwahae_comments_url, notice: "Hwahae comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hwahae_comment
      @hwahae_comment = HwahaeComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hwahae_comment_params
      params.require(:hwahae_comment).permit(:date, :comment_text, :user_id, :hwahae_content_id)
    end
end
