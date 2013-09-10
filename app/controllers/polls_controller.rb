class PollsController < ApplicationController
	before_filter :check_user_poll_count, only: [:create]
	before_filter :check_existing_vote, only: [:create]
	def create
		unless @user_poll_count >= 3 or @existing_vote >= 1
			@poll = Poll.create!({question_id: params[:question_id], voter_id: @current_user.id})
		end
		if @user_poll_count >= 3
			@message = "You have already voted for 3 questions"
		elsif @existing_vote >= 1
			@message = "You have already voted for this question"
		elsif @existing_vote == 0
			@message = "You have successfully voted for this question"
		end
		redirect_to questions_path, :notice => @message
	end

	def destroy
		@poll = Poll.where(question_id: params[:question_id], voter_id: @current_user.id).first
		if @poll
			@poll.destroy
			@message = "You have successfully cancelled your vote for this quesiton"
		else
			@message = "You dont have vote for this question"
		end
		redirect_to questions_path, :notice => @message
	end

	private

	def check_user_poll_count
		@user_poll_count = Poll.where(voter_id: @current_user.id).count
	end

	def check_existing_vote
		@existing_vote = Poll.where(question_id: params[:question_id], voter_id: @current_user.id).count
	end
end
