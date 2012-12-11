class QuestionsController < ApplicationController
  before_filter :load_profile

  def create
    @question = @profile.questions.new(params[:question])

    respond_to do |format|
      if @question.save
        msg = {email: @profile.email, body: @question.body, name: @profile.name}
        QuestionMailer.send_question(msg).deliver
        unless msg[:email] == 'vishen@mindvalley.com'
          QuestionMailer.send_question(email: 'tristan+vishen@mindvalley.com',
            subject: "[Ask@Mindvalley] Someone asked #{msg[:name]} a question ...",
            body: @question.body).deliver
        end
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
