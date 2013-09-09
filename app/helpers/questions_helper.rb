module QuestionsHelper
	def get_vote_count(question)
		@count = Poll.where(question_id: question.id).count
	end
end

