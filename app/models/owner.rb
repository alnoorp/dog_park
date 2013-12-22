class Owner < ActiveRecord::Base
  has_many :dog_owners
  has_many :dogs, through: :dog_owners
  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_presence_of :first_name
  validates_format_of :first_name, :with => /\A[a-zA-Z]+\z/
  validates_presence_of :last_name
  validates_format_of :last_name, :with => /\A[a-zA-Z]+\z/
end
