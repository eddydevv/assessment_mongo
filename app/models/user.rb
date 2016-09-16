class User
  include Mongoid::Document
  rolify
  field :username, type: String
end
