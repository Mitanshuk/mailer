ActiveAdmin.register Transaction do
  permit_params :course_id, :tutor_id, :student_id, :attachment

  index do
    selectable_column
    id_column
    column :course_id
    column :tutor_id
    column :student_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :course_id
      f.input :tutor_id
      f.input :student_id
    end
    f.actions
  end

  show do
    attributes_table do
      row :course_id
      row :tutor_id
      row :student_id
    end
  end
end
