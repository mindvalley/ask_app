class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
  	before_filter :check_session
  	
  	def check_session
	  unless request.cookies["voter"].present?
	    logger.info "------inside if--------"
	    start_session
	  else
	    logger.info "-------inside else------"
	    session[:voter] = request.cookies["voter"]
	  end
      @current_user ||= Voter.where(voter_id: session[:voter]).first
	end

    def start_session
      voter = Voter.create!(voter_id: SecureRandom.hex)
      cookies[:voter] = {
        value: voter.voter_id,
        expires: 1.year.from_now
      }
      session[:voter] = voter.voter_id
    end
end
