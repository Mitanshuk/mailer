ActiveAdmin.register Course do
  permit_params :title, :description, :price, :user_id, :video, :image, :pdf

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :price
    column :user_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :price
      f.input :user_id
      f.input :video, as: :file
      f.input :image, as: :file
      f.input :pdf, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :price
      row :user_id
      row :video do |course|
        if course.video.present?
          video_tag course.video.url
        else
          "No video available"
        end
      end
      row :image do |course|
        if course.image.present?
          image_tag course.image.url
        else
          "No image available"
        end
      end
      row :pdf do |course|
        if course.pdf.present?
          link_to "Download PDF", course.pdf.url
        else
          "No PDF available"
        end
      end
    end
  end
end
