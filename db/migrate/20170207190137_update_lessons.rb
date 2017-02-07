class UpdateLessons < ActiveRecord::Migration[5.0]
  def change
    add_column(:lessons, :week_id, :integer)
  end
end
