class Week < ActiveRecord::Base
  has_many :lessons

  validates :name, :presence => true
  validates :number, :presence => true
end
