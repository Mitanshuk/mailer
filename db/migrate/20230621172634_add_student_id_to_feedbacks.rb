class AddStudentIdToFeedbacks < ActiveRecord::Migration[7.0]
  def change
    add_column :feedbacks, :student_id, :integer
  end
end
