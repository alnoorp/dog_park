class DogOwner < ActiveRecord::Base
  validates_presence_of :dog_id
  validates_presence_of :owner_id
  belongs_to :dog
  belongs_to :owner
end
