class Profile
  include Mongoid::Document
  field :name, type: String
  field :avatar_url, :type => String
  field :title, type: String
  field :description, :type => String
  field :email, type: String

  include Mongoid::Slug
  slug :name

  embeds_many :questions
  
end
