class AddNumber < ActiveRecord::Migration[5.0]
  def change
    add_column(:lessons, :number, :integer)
  end
end
