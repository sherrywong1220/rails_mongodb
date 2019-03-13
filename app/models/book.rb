class Book
  include Mongoid::Document
  field :title, type: String
  field :pages, type: Integer
  field :author, type: String
  validates_presence_of :author
end
