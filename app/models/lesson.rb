class Lesson < ActiveRecord::Base
  belongs_to :week

  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :presence => true

  def next_lesson
    return Lesson.find_by number: self.number + 1
  end
end
