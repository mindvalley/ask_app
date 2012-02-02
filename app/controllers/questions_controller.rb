class QuestionsController < ApplicationController
  before_filter :load_profile

  def create
    @question = @profile.questions.new(params[:question])

    respond_to do |format|
      if @question.save
        format.js
      else
        format.js { render :error, locals:{errors: @question.errors.full_messages.join(' '), status: 400} }
      end
    end

  end

  def update
  end

  def destroy
  end

  private

  def load_profile
    @profile = Profile.find_by_slug(params[:profile_id])
  end

end
