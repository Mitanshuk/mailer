class AddVideoToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :video, :string
  end
end
