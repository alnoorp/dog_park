class Dog < ActiveRecord::Base
  has_many :dog_owners
  has_many :owners, through: :dog_owners
  validates_presence_of :name
end
