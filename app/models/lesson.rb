class Lesson < ActiveRecord::Base
  belongs_to :week

  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :presence => true
end
