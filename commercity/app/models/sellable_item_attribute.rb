class SellableItemAttribute
  include MongoMapper::Document

  key :name, String
  key :value, String
  
  # Foregin keys.
  key :sellable_item_id, ObjectId
  
  # Relationships.
  belongs_to :sellable_item
  
  # Validations.
  validates_presence_of :name, :value

end