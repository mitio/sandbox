class SellableItem
  include MongoMapper::Document

  key :name, String
  
  # Foregin keys.
  key :sellable_item_category_id, ObjectId
  
  # Relationships.
  belongs_to :sellable_item_category
  many :sellable_item_attributes
  
  # Validations.
  validates_presence_of :name
  
end