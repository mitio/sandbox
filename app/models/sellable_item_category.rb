class SellableItemCategory
  include MongoMapper::Document

  key :name, String
  
  # Relationships.
  many :sellable_items
  
  # Validations.
  validates_presence_of :name

end