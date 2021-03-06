class Profile
  include Mongoid::Document

  default_scope asc(:order)

  field :name, type: String
  field :avatar_url, :type => String
  field :title, type: String
  field :description, :type => String
  field :email, type: String
  field :order, type: Integer

  include Mongoid::Slug
  slug :name

  embeds_many :questions
  
end
