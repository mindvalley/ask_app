class QuestionMailer < ActionMailer::Base
  default from: "ask@mindvalley.net"

  def send_question(msg={})
    @email = msg[:email]
    @body = msg[:body]
    @name = msg[:name]
    mail(to: @email, subject: '[Ask@Mindvalley] Someone asked you a question ...')
    unless @email == 'vishen@mindvalley.com'
      mail(to: 'vishen@mindvalley.com', subject: "[Ask@Mindvalley] Someone asked #{@name} a question ...")
    end
  end
end
