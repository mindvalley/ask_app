EMAIL_QUEUE = GirlFriday::WorkQueue.new(:question_email, :size => 3) do |msg|
  QuestionMailer.send_question(msg).deliver
end