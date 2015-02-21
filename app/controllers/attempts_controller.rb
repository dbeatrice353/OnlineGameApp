class AttemptsController < ApplicationController


  # POST /attempts
  # POST /attempts.json
  def create
    @attempt = Attempt.new(attempt_params)
    if user_signed_in?
      @attempt.user_id = current_user.id
    end
    @attempt.save
    respond_to do |format|
      if @attempt.save
        format.js { render action: 'show', status: :created, location: @attempt }
      else
        format.js {}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attempt
      @attempt = Attempt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attempt_params
      params.require(:attempt).permit(:score)
    end

end
