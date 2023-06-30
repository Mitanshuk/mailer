class CourseSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :price
end
