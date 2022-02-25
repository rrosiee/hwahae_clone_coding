class RequestsController < ApplicationController
  before_action :set_request, only: %i[ show edit update destroy ]

  # GET /requests or /requests.json
  def index
    @requests = Request.all
	# @my_events = Event.where(user_id: current_user.id)
	@my_events = Request.where(user_id: current_user.id)
  end

  # GET /requests/1 or /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests or /requests.json
  def create
    @request = Request.new(request_params)
	user_id = @request.user_id
	event_id = @request.event_id
	@request_overlap = Request.where(user_id: user_id, event_id: event_id).size
	@request_size = Request.where(event_id: event_id).size
	puts "현재 사이즈 수 : #{@request_overlap}"
	puts "유저 ID : #{user_id}"  
	puts "이벤트 ID : #{event_id}"
	  
    respond_to do |format|
	
      if @request_overlap > 0
		  format.html {redirect_to events_path, notice: '중복신청은 되지 않습니다.'}
		  
	  else
		 @request.save
		 format.html {redirect_to events_path, notice: '이벤트 신청이 완료되었습니다.'}
      end
    end
  end

  # PATCH/PUT /requests/1 or /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: "Request was successfully updated." }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1 or /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to my_page_path, notice: "이벤트 신청이 취소되었습니다." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:user_id, :event_id)
    end
end
