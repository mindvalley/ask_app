class Question
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :body, :type => String
  field :answer, type: String
  field :rating, type: Integer

  validates_presence_of :body

  embedded_in :profile

end
