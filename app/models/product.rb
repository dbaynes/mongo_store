class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  #Xinclude Mongoid::Paranoia
  #Xinclude Mongoid::Versioning
  
  field :_id, type: String, default: -> {name.to_s.parameterize}
  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date
  Mongoid::Timestamps
  
  embeds_many :reviews

  validates_presence_of :name

end
