class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :string
    end
  end
end
