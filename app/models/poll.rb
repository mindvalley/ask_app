class Poll < ActiveRecord::Base
	attr_accessible :question_id, :voter_id
end
