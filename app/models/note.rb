class Note
  include Mongoid::Document
  
  field :body, type: String
  
end