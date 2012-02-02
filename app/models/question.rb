class Question
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :body, :type => String
  field :answer, type: String
  field :rating, type: Integer

  embedded_in :profile

end
