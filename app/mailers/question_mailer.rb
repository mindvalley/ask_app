class QuestionMailer < ActionMailer::Base
  default from: "ask@mindvalley.net"

  def send_question(msg={})
    @email = msg[:email]
    @body = msg[:body]
    mail(to: @email, subject: '[Ask@Mindvalley] Someone asked you a question ...')
  end
end
